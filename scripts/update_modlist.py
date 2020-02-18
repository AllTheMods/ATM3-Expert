'''
Script to update modlist.html from manifest.json
'''

import json
from urllib import request, parse

def get_modlist_from_manifest():
    '''
    Will return the modlist array.
    Each element will be a dictionary.
    Each element will have: projectID, fileID, and required
    '''
    with open('manifest.json') as json_file:
        data_str = json_file.read()
    data_dict = json.loads(data_str)
    return data_dict["files"]

def modlist_from_curseforge(ids):
    '''
    Fetches the list of mods from curseforge using the provided ids
    '''
    # See: https://twitchappapi.docs.apiary.io/#/reference/0/get-multiple-addons/get-multiple-addons/200?mc=reference%2F0%2Fget-multiple-addons%2Fget-multiple-addons%2F200

    req = request.Request("https://addons-ecs.forgesvc.net/api/v2/addon")
    req.add_header('Content-Type', 'application/json; charset=utf-8')
    post_data_json = json.dumps(ids)
    post_data_bytes = post_data_json.encode('utf-8')
    resp_str = request.urlopen(req, post_data_bytes).read()
    resp_json = json.loads(resp_str)
    return resp_json 

def main():
    modlist = get_modlist_from_manifest()
    mod_ids = [x["projectID"] for x in modlist]
    cf_modlist = modlist_from_curseforge(mod_ids)
    # Sort the mod list by name:
    cf_modlist.sort(key=lambda d: d["name"])
    # print out the new modlist.html
    with open('modlist.html', 'w') as f:
        f.write("<ul>\n")
        for mod in cf_modlist:
            f.write("<li>")
            f.write("<a href='{}'>".format(mod["websiteUrl"]))
            f.write(mod["name"])
            authors = [a["name"] for a in mod["authors"]]
            f.write(" (by {})".format(", ".join(authors)))
            f.write("</a>")
            f.write("</li>\n")
        f.write("</ul>\n")

if __name__ == "__main__":
    main()
