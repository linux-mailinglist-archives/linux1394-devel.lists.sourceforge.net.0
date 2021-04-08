Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD6E357BD5
	for <lists+linux1394-devel@lfdr.de>; Thu,  8 Apr 2021 07:28:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lUNCv-0006Us-Ey; Thu, 08 Apr 2021 05:27:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+17430347-d4eb-linux1394-devel=lists.sourceforge.net@em4842.fdc-k.africa>)
 id 1lUNCu-0006Ul-Mm
 for linux1394-devel@lists.sourceforge.net; Thu, 08 Apr 2021 05:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Subject:Message-ID:To:Mime-Version
 :From:Date:Content-Type:Content-Transfer-Encoding:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R8Ar4DFzZCo01Mz8b2Qj6hqcIEjPkUt4YJyNUJdNwgU=; b=lag9xJxoYBokP4bdMdfcgF2Pra
 LWSnDaERQR0XQ96MLlh88Zn6uHE26/DuCTkUffTwtP3rQBIh57rN+h6/s4px61YU9SBrM/odUFoIP
 W+K1VilX+YVQK36MbXiVM5BHbpmjs0xH4vqfXBIsNr685Ow2eWTueTnZBE4fq6fuQvus=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Subject:Message-ID:To:Mime-Version:From:Date:
 Content-Type:Content-Transfer-Encoding:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R8Ar4DFzZCo01Mz8b2Qj6hqcIEjPkUt4YJyNUJdNwgU=; b=W+UBSiET9r6eM352QUulrSpLrp
 mKYkR34JV+IpDbtE3JCxTyf43IWgFugUnCHIhVCtRhtMtiP6CtCWNCqQkTHMud/FYhUXNrflB1+iF
 H5VtEepUvPKckir6ZvasfYdZMNNSmRsijoWnLMyxbG4WHxeizuV1vOiZZOol7VpsUafE=;
Received: from wrqvqdbx.outbound-mail.sendgrid.net ([149.72.77.186])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUNCq-00078z-3J
 for linux1394-devel@lists.sourceforge.net; Thu, 08 Apr 2021 05:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fdc-k.africa; 
 h=content-transfer-encoding:content-type:from:mime-version:to:subject:list-unsubscribe;
 s=s1; bh=R8Ar4DFzZCo01Mz8b2Qj6hqcIEjPkUt4YJyNUJdNwgU=; b=oRgIRUu
 1WQVyXPIOoZ6OSNeDaPJoUYJx9mWm9CsoeGI3ncYz6sPSamRTKAGHz8CSJQeLbMs
 50HDvPSprPmgQNWjhtYz3bHGH4D6ahM037EAZQjuLVynAugKs4/UJwwQJo3rYhtx
 dLF+44BXLySU9uW3b4r7WDAMn8yaF6Q8TBcs=
Received: by filter1991p1las1.sendgrid.net with SMTP id
 filter1991p1las1-12178-606E943B-1
 2021-04-08 05:27:23.230662461 +0000 UTC m=+723253.937363852
Received: from MTc0MzAzNDc (unknown)
 by geopod-ismtpd-1-0 (SG) with HTTP id srqu4Y1CRIK0tBcBvY6JNw
 Thu, 08 Apr 2021 05:27:22.961 +0000 (UTC)
Date: Thu, 08 Apr 2021 05:27:45 +0000 (UTC)
From: "Jackson From FDC-K Africa" <Jackson@fdc-k.africa>
Mime-Version: 1.0
To: linux1394-devel@lists.sourceforge.net
Message-ID: <srqu4Y1CRIK0tBcBvY6JNw@geopod-ismtpd-1-0>
Subject: Invitation to Grant management using Sun accounting system Workshop
X-SG-EID: Pi9w8YTZchD2AGqRTKxcX/hvrtAIswiOm2Mb1qxwhorJ2gK7BB4dIUgR+dfk5XY8YZjxdJWEcdVd0x
 I9lKuddv1u52PAnQBSNJIn6jUst/R+oOLNYkRHMxXErJKAgzYQCWe7Es8HBvK97cutNwGZ7JsWjdf+
 DtX6qdyTwoToM7FC2/9BCWpVfgdRSn6PK+JeM59aalJoktdPufWob9f1arHiQgTZ+x0f2XXf08+22D
 JE+S2dAl7igvST36mM4q47DF1gDLxd/Wj033RHZF3yYQ==
X-Entity-ID: lgZohGoWIjvYsKzlUpYsxA==
X-Spam-Score: 4.4 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fdc-k.co.ke]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [149.72.77.186 listed in wl.mailspike.net]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?149.72.77.186>]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.0 SENDGRID_REDIR         Redirect URI via Sendgrid
X-Headers-End: 1lUNCq-00078z-3J
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5864809734557149713=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============5864809734557149713==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html><html xmlns=3D"http://www.w3.org/1999/xhtml" style=3D"" clas=
s=3D" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation=
 postmessage websqldatabase indexeddb hashchange history draganddrop websoc=
kets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshado=
w textshadow opacity cssanimations csscolumns cssgradients cssreflections c=
sstransforms csstransforms3d csstransitions fontface generatedcontent video=
 audio localstorage sessionstorage webworkers no-applicationcache svg inlin=
esvg smil svgclippaths js csstransforms csstransforms3d csstransitions resp=
onsejs "><head>
        <title>Invitation to  Grant management using Sun accounting system =
  Workshop</title>
        <meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-sc=
ale=3D1.0" />
        <style type=3D"text/css" media=3D"only screen and (max-width: 480px=
)">
            /* Mobile styles */
            @media only screen and (max-width: 480px) {
                [class=3D"w320"] {
                    width: 320px !important;
                }
                [class=3D"mobile-block"] {
                    width: 100% !important;
                    display: block !important;
                }
            }
        </style>
                                      </head>
    <body style=3D"margin:0" class=3D"ui-sortable">
        <div data-section-wrapper=3D"1">
            <center>
                <table data-section=3D"1" style=3D"width: 600;" width=3D"60=
0" cellspacing=3D"0" cellpadding=3D"0">
                    <tbody>
                        <tr>
                            <td>
                                <div data-slot-container=3D"1" style=3D"min=
-height: 30px" class=3D"ui-sortable">
                                    <div data-slot=3D"text" data-param-padd=
ing-top=3D""><div data-empty=3D"true"><img class=3D"fr-dib" src=3D"http://i=
nfo.fdc-k.co.ke/media/images/cfa2339650bd7b95b8999b3698cf402e.png" width=3D=
"792" height=3D"122" /></div><div data-empty=3D"true"><br /></div><div data=
-empty=3D"true">Grant management using Sun accounting system course-May 03 =
to May 14,2021 for 10 Days</div><table border=3D"0" cellpadding=3D"0" cells=
pacing=3D"0" width=3D"0"><tbody><tr><td valign=3D"bottom" width=3D"1049"><d=
iv data-empty=3D"true"><br /></div></td></tr></tbody></table><table border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"1049"><tbody><tr><td va=
lign=3D"bottom" width=3D"1049"><div data-empty=3D"true"><a href=3D"https://=
u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUY=
A-2F7kAumHSwJjgEq1o-2F4NHtsE33fY-2BFyjAKGm-2BpXlqfhz3XMhMXYQGEu-2B-2BgxsoPK=
hAZ4AneghvIja-2BB9cNgThgylC7JllFI2SJPBhgPrleI8d-2Bv5ZrHDj-2Fx4QJOu2Lqqv3eKY=
Bj3ID4KKKp-2BEsbV8c0Qvjcg2O4WHaLHR9OqhnMUaksVzR5vBlsmgq1KBG0s9iJ-2BQ62j11Up=
Qm7QyDmV86e67rCIrHACY74W0wzCT2-2BAe1WF5-2BwnMAWw-2BIHOCTjFjC-2BUS2zOZ05JXkT=
VjBE8IY73fWPcMcVC9jTCqD8NjD-2F6D-2BR-2Fum44-2BgmrRmtzOztFAx1nbXRknoHL-2FF1P=
z-2B7x-2FbFReR8w6pYBI-2F7HAX3r3mWwc0FoGOD5-2FnvVBBUVHw5H-2Bm-2Bhx3tT21NL3kE=
9rrYIrI184yedQrcSk4Eii-2F4SJWp40mpN8T3Xy6VYQpSuzBcuGPJJWc2gpN88-3DOe5k_9c2Z=
CZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeQdukLO220bj=
88KpqZu6bZp3DbPvouPu8RMiTOsfSsPZxKXyC2GspvcTW7i1IS0JuyrVKDCzy9Nb26UBA1oViRC=
UD8nOYQ4HCPwZAuAzWQaOsu8Wf4PJN8jGDJQNCDHPWU863unKJdNdEPXjM4uySXL8b46aQk-2BF=
buktTu5dc-2Bk4lA5tSzVmoEjdq-2BeAp4DJY" rel=3D"noopener noreferrer" target=
=3D"_blank"><br /></a></div></td></tr></tbody></table><a href=3D"https://u1=
7430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-=
2F7kAumHSwLZSP3ncpgiruc3C8MdE-2Bk6WzCMs-2BMjEJPpIrXDQufJ-2BtQcCwmazU4f-2BmG=
UkLyomkF7WQe4-2BUk-2FUewAYmsbfvJr8C3qk4a98ciSluMMrl9rpTaamnPeGjXvaLhwqtSPg4=
k2GgCH1JmybEjidR3QPlzO8-2Fo-2F3ekNFpgmrOVSUztCX5v6Nk-2FMyZIbMhRJIcam28-2BDq=
Q3gDXQeLeub2AVXDOxhA4ZQGbWzmXUPFq-2BihJ1GBDkYv4WnfTATnqJGW4TP7N-2FMFPFRnpII=
I9x5SJ8vbjTvUwSmvw1zwCJpncegjrIDRDB9hCj58T40XLK23nquE2zGBmisEUurjGCVT7r5HBj=
elI4sdZ1MyT-2BoV6h9F81zMO2uQ9QdbJQR6ONc9MqOK2PPDPboU0x1KgYJIYaZE8UPBAjyMDf0=
5-2B774npyAatGBCVkjveypd7d46ZMUtMr4hY-3Dk99Y_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1=
NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeQdukLO220bj88KpqZu6bZoeRvzRtI6UffrIEX=
Eh6Q9FCWzTUw7hwLB0d6MEaB0R038DK7O8ca3LzkztWcAh5oK8D57OyIjeQaul-2FFhED2aONiI=
fC-2Byc7R2P7mzYtVfNgRr0gWQqouE9UfKiAoWHXnuKlP10B3sV3xUhnh9F7ocb3a-2BjCv1iRA=
-2BDozWetAk0D" rel=3D"noopener noreferrer" target=3D"_blank"><strong>=C2=A0=
</strong></a><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGL=
S-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwLijYKCFxbXEaveJNaAD8LU6T8F-2BPP=
H4wIBInEJ7RC38zVqRpa8guSoEfH85nphkqZ8PDnvCkAewUf6PS5G7TYKPRJ8LG-2FD6BQLRruk=
FNrAi5b3vXGpQHyPrx8hlZtaiS0b8OPIZugXMM27UODBsDLPhBXHgfl3EBOhaDSPvSXe2YmHaeY=
nv5o2SpHABoTnPJVYUY00qjGXNJfBE6LiLg69eC193QbJKEIDZnn6a1BRWYL1ge6hYiUOYaeW9P=
nRY12X9Z27DJY-2BhOVFlN7DYMklpPoUo5EEcE2TZcnPntdfA4FSDZEB2dJQ13SRORtE-2F4XQc=
9K2hpfoh3DJPw2w2Nnj6lCRlCh7TcmowhPf3-2FHd-2FN0RbRHFUFm97QGnAt8x-2BfQeWa2RgH=
tmNLd4kbgdGe8vMbThBM2PLBW3jFPGPFu4sMUPPvOWne4bZBn1t5LupJo-3DbVkp_9c2ZCZzrWF=
lb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeQdukLO220bj88KpqZ=
u6bZt8dH53W5j6jNprXVUNIJpg9itANuyPzAQv4Bt9kfZSyKH59HpMuh8LibezuUQserA4GXdAt=
AA3XSwUVUcgkSvkRA952Z-2Frf2EfSejA8OOHOdEKMKEoig4Kq9gb7K7muwq31qH-2Bh-2Frek-=
2F6UYt-2BuhJaE50qjHxhlK50-2Bjuz3R5iy-2F" rel=3D"noopener noreferrer" target=
=3D"_blank"><strong>Click Here to=C2=A0</strong><strong>Register =C2=A0for =
online attendance course fee or Normal attendance as individual or group</s=
trong></a><div data-empty=3D"true"><br /></div><a href=3D"https://u17430347=
.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAum=
HSwKpgncldBXtcstiGWqNCileIu-2BBX-2FNlhGKOxjq8VjLeOkebuWlbyYueWnQBiSP-2Fk0U3=
wagdaE3-2BuOzSfo-2FboP8FtOj-2FFHsyLnRDQP6TtkStmANnzy9ggaQo1qIqgMBDayGQRY5wJ=
JiRwA1guAIU-2F1hHpJof40dg-2BssHCJU9Nh17cANKV3sikjurN6GPF3v5-2FDt18xgryBlSV5=
4It28Ox5b8i2yusvDMGAcSDCaDLkGAQ5OJQsSOyK6OROWfj5GnBco2sB6jCKixla8X8Pj6Zc3jl=
1KMoj7Itv2ZdbOk0CltEdH1ZNUtTUQxytds-2Fqu1vqgMi9VypwlUCTHJGSzL-2Fz-2BkG6VyfD=
OAPOmI8P9gxgYHi4zykOOBN8cz9wgKFKjV5PiW9iETLi9lRWDerJN4Y3OTvaa5qG5BbRhjLCPbA=
23SCklC9cXjtLmSM-2BLumexpj7s-3Dh3nj_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB=
-2BJJVDAgewWzHM8gDHHOxhos5tjeQdukLO220bj88KpqZu6bZmAbp2ZKlAn1AhyziQKRPW-2FJ=
k0uB9r67YvCUHSS1w-2BEnedKxna5xxpQ5hjjpBXqqnu8Jqr9J8zMhcbQmwKHhvi5kHtln9Alxi=
mnukwGfZjHsKj-2BsqcCAvEf1Tcll3C-2FVJKGswsRoP1RDKkNnQd7Q3p0gQsApzByE6uUYsHb6=
tY3i" rel=3D"noopener noreferrer" target=3D"_blank"><strong>Download PDF Ca=
lendar=C2=A02021</strong></a><br /><a href=3D"https://u17430347.ct.sendgrid=
.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwKpgncldBX=
tcstiGWqNCileIu-2BBX-2FNlhGKOxjq8VjLeOkebuWlbyYueWnQBiSP-2Fk0U3wagdaE3-2BuO=
zSfo-2FboP8FtOj-2FFHsyLnRDQP6TtkStmANnzy9ggaQo1qIqgMBDayGQRY5wJJiRwA1guAIU-=
2F1hHpJof40dg-2BssHCJU9Nh17cANKV3sikjurN6GPF3v5-2FDt18xgryBlSV54It28Ox5b8i2=
yusvDMGAcSDCaDLkGAQ5OJQsSOyK6OROWfj5GnBco2sB6jCKixla8X8Pj6Zc3jl1KMoj7Itv2Zd=
bOk0CltEdH1ZNUtTUQxytds-2Fqu1vqgMi9VypwlUCTHJGSzL-2Fz-2BkG6VyfDOAPOmI8P9gxg=
YHi4zykOOBN8cz9wgKFKjV5PiW9iETLi9lRWDerJN4Y3OTvaa5qG5BbRhjLCPbA23SCklC9cXjt=
LmSM-2BLumexpj7s-3Da9tN_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewW=
zHM8gDHHOxhos5tjeQdukLO220bj88KpqZu6bZknq-2FJ5sCjmLO4T-2Fn1Ot9PUJvxHzQ8T6BV=
-2F3viKbsSZ9s9BYgCFZTzxNltHo8qnh5m-2BmL7r3Y2Zf9tZWMuWEeASDEfxIrNT28LDx8cxVB=
eGc2V04rNTo8l5PiFWWHoA-2BhxyG8dZgvv8xq4hDVBBzfsBkqlXUGW8n0jtUPstqbFsI" rel=
=3D"noopener noreferrer" target=3D"_blank"><br /></a><strong>OFFICIAL EMAIL=
 ADDRESS</strong>: <strong>training@fdc-k.org</strong><div data-empty=3D"tr=
ue"><br /></div><strong>Office Telephone: +254712260031</strong><div data-e=
mpty=3D"true"><br /></div><span style=3D"font-size: 14px;"><b style=3D"colo=
r: rgb(97, 189, 109); font-family: Tahoma, Geneva, sans-serif;">Register as=
 a group of =C2=A0 5 =C2=A0or more participants and get 40% discount on cou=
rse=C2=A0</b><span style=3D"color: rgb(97, 189, 109);"><strong>fee. Send</s=
trong></span><b style=3D"color: rgb(97, 189, 109); font-family: Tahoma, Gen=
eva, sans-serif;"><span style=3D"color: rgb(97, 189, 109);">=C2=A0</span>us=
 email to training@fdc-k.org or call +254712260031</b></span><div data-empt=
y=3D"true"><br /></div><b style=3D"color: rgb(97, 189, 109); font-family: T=
ahoma, Geneva, sans-serif;">TRAINING FOR ONLINE AND NORMAL ATTENDANCE AVAIL=
ABLE</b><div data-empty=3D"true"><br /></div><div data-empty=3D"true"><br /=
></div><div data-empty=3D"true"><br /></div><u><strong>COURSE OUTLINE</stro=
ng></u><br />=C2=A0<br /><strong>Introduction</strong><br />This course is =
designed to enable those involved with grant management to become efficient=
 and effective in the acquisition and utilization of funds for development =
purposes, using appropriate techniques and application of accounting and fi=
nance principles.<br /><strong>Duration</strong><br />10 days<br /><strong>=
Who should attend?</strong><br />Finance Directors, Finance Managers, Procu=
rement Directors, Procurement managers, Procurement officers, Administrator=
s, Project officers, Budget Accountants, Auditors, Chief Accountants, Credi=
t Controllers<br /><strong>Course Objective:</strong><ul><li>Identify and a=
ssess the critical terms and conditions of grant aid for donor-funded proje=
cts</li><li>Ensure compliance with donor terms and conditions</li><li>Provi=
ding supporting documents</li><li>procurement of goods and services; and me=
eting financial reporting requirements</li><li>Use a grant schedule to mana=
ging multiple-funded programmes</li><li>Prepare a donor financial report to=
 match with a project narrative report.</li><li>Describe the four phases in=
 the grant management cycle</li><li>Clarify key responsibilities and routin=
es needed for successful grant management</li><li>Describe the impact of fo=
reign exchange on grant management</li><li>Identify the requirements for cl=
osing off a donor grant.</li><li>Use of sun system =C2=A0and Excel in manag=
ement of grant</li></ul><strong>Course content</strong><ul><li>Key challeng=
es in grant management</li><li>The grant management life cycle</li><li>Resp=
onsibilities and routines in grant management</li><li>The flow of donor fun=
ds</li><li>Assessing the terms and conditions in grant agreements</li><li>H=
ow grant agreements impact on accounting and procurement systems</li><li>Co=
mplying with donor reporting requirements</li><li>Managing multiple-donor f=
unded projects</li><li>Managing key relationships for successful grant mana=
gement</li><li>Advance sun system in grant management</li><li>Advanced exce=
l formulas and functions for grant management</li><li>=C2=A0Excel chart in =
depth for grant presentation</li></ul><div data-empty=3D"true"><br /></div>=
<strong>General Notes</strong><ul><li>All our courses can be Tailor-made to=
 participants needs</li><li>The participant must be conversant with English=
</li><li>Presentations are well guided, practical exercise, web based tutor=
ials and group work. Our facilitators are expert with more than 10years of =
experience.</li><li>Upon completion of training the participant will be iss=
ued with Foscore development center certificate (FDC-K)</li><li>Training wi=
ll be done at Foscore development center (FDC-K) center in Nairobi Kenya. W=
e also offer more than five participants training at requested location wit=
hin Kenya, more than ten participant within east Africa and more than twent=
y participant all over the world.</li><li>Course duration is flexible and t=
he contents can be modified to fit any number of days.</li></ul><strong><u>=
OTHER UPCOMING WORKSHOPS (CLICK =C2=A0ON THE COURSE TO VIEW COURSE OUTLINE =
AND REGISTER TO ATTEND)</u></strong><div data-empty=3D"true"><br /></div><u=
l><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6=
u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwJT1jHgN9hBiSimS0LFk8sIUi26MmVysbLseger=
MzRlODT0sfucFNwq2OvjhXGzflI1vm44kug6CGh0FXCdFXhskDyEtsXw0UENhdm1ont7bq5ruVj=
KOPWIQSF0PRjFKqItAUK-2Fos144IN9-2B-2F8TQy2ynkrngUZTmks62w-2Fub-2FwweLkXu7Z2=
-2BURleUiYxDBDwKTZGBqwmPol2aErqwzE-2BlvopYmi4FER1zndzKmV2rbcrNv9Yg15VhznVTJ=
PsZmP5jhXkqrS2rOJ6iBhpEPQa1OvARnIH4RdKIwx-2FiA797kg0djGmZE5-2BerBek98iGjhk6=
-2Bwc2yGtabN8lJ7jScUZSLSEqd-2FcTOgggUuFVmg-2FJXSMaiSk-2FG98RSrISzMRjg-2B5Za=
1EnkObdEw35Ha5N4GP252hkuhfCPHWLXVTDK3YJqtbaJYsdMYN6hpWhg6H-2BRXaVs-3DfY4m_9=
c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeQdukLO22=
0bj88KpqZu6bZhkstU-2By2CIXlf4iuMjaiHCyXcm9hG4hQA-2Bf8gfeo7aE6nqU0MOPFJs7-2F=
jooqStsQhKy4UXCNvA0ZVVPQARpM6Wn2PdD05H1ZjK1s3SoSKIEYZtfgH5tVXNZlO3kTdhskCYu=
ma5x1mYpZcqIvvIPzrxgEdIVNLIt-2BgAcMmMcxjxB" rel=3D"noopener noreferrer" tar=
get=3D"_blank">Inventory Control And Warehouse Management Course</a></li></=
ul><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"732"><t=
body><tr height=3D"20"><td height=3D"20" width=3D"732"><ul><li><a href=3D"h=
ttps://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz29=
9sgWAUYA-2F7kAumHSwLOVGVv7kRDyZLB-2Bezu8aOhyEvju38J3JUZ2INVxK1oQn6UvBOl2wlN=
2dU1GhQ5J71EnNcEvaD0nhrdM5xJ-2F-2FIxFUGYsI-2Fj-2FZJ-2BPdsN5qsXfpIU-2FOjp68D=
BwT9ofUPN2JVB7Rp6Foj8wb6f1uan-2F-2F-2B73-2BRXFVjTsGkZFSFTubGYEF-2B9GIUCrQw9=
lGhSHW1XT4ShRFok2YXz4EscLBs5eU8pk4kJAfasqfYZiMER2gOqS5s-2FT-2F8Nmd2XaYG5eDl=
3nCN8nISxTeLuKKVIDjLxXOjdtHdBdIawD8ASkft4UVYOYf2cabyU8HN6kdfHCm8OhmFYY7jPON=
L180Y2m5PoD2HdOQD3TG6VVs1UZRwyFIpoZZnkQPhHh-2Fcdr183nxke8YLbjwQ6TzExVbPc1sH=
ZUhS51muhHp19P0-2BuzJ3qnE6OMolmB2VmC7zBn6OciOzaUww-3Ds2w7_9c2ZCZzrWFlb2tjme=
i9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeQdukLO220bj88KpqZu6bZmNq=
OQCeWLyLu6gpWFTxLYQnL2m0CTB5kk-2FAlhhhiEx7QyZPOn-2F5RslS2vbZ5dcLORDSEUfBOLc=
XNYViYCyK91LBgBALp7DF-2FmWbZBqf3dtjXTrXnC7f7YnrHZs2O2yCodD14gpMQwnW0awcGl8q=
sUgdBNjV7bhVQJDuCD9n524u" rel=3D"noopener noreferrer" target=3D"_blank">Ent=
repreneurship and Innovation Course</a></li></ul><table border=3D"0" cellpa=
dding=3D"0" cellspacing=3D"0" width=3D"732"><tbody><tr height=3D"20"><td he=
ight=3D"20" width=3D"732"><ul><li><a href=3D"https://u17430347.ct.sendgrid.=
net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwKX2ytY32P5=
fMtEN6ibVOQX-2FqYFNXXQHbLNUC3knB2ESyzNJF5OmjnhQk4GvZTHoJKukpM2OoWWWSCcKfIXA=
JeisG-2FxDjN-2BqV93y6MGvLLrGdLCeWD8taZBdCDCAIyfOeGk4tVpIpBdGeg1rWsIiV7wrZ3S=
giCr4eSzXsJjjMYQbs4mxa4dfK-2FhYTjKQ0IXj-2BYMRKdfvdNt51FmgqbZOGbykT9WaSsKGi0=
XdIZeN1l3RWBpMGYkjPC9W-2BBZq15rAc-2Blk8l46usmUdsjFWZO24z-2B6N6-2FuHYKfQjJ5-=
2B-2F20gNIPTJe3b25f96-2FPsjfNs-2BzuUqLa1DiuZO6AJOIHIRw9DisQKEHbmu8zcRclP4gI=
cC28EGr91Qjep90gRD3EbmIRETTJXtI-2F6TucehnQlDnYR2k7knH36EVt1hODabBztTt3CASgg=
m98XLorrzzeIgZWBA-3DfSOV_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgew=
WzHM8gDHHOxhos5tjeQdukLO220bj88KpqZu6bZsrKBBBU8HOvTvPE8AUUQP33-2FDMtsWb1Ir0=
DiyICe-2FuGbo8qFNkGEEXBofBpR1MtOFDkPGQ2uH7HqBU3RMGH5Xybgj074E9LqlSntC1aNi1j=
GQwLWCWcYdKIv78Xrn-2FHhjrvt7jkPDL7yp-2BAYXczNePAHWk404emfKvWV997M7jS" rel=
=3D"noopener noreferrer" target=3D"_blank">Office ICT Basic Skills Training=
 Course</a></li></ul></td></tr></tbody></table><div data-empty=3D"true"><br=
 /></div></td></tr></tbody></table><div data-empty=3D"true"><br /></div><ta=
ble border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"0"><tbody><tr=
><td valign=3D"bottom" width=3D"708"><div data-empty=3D"true"><br /></div><=
/td></tr></tbody></table>Looking forward to your registration and attendanc=
e.Result Based skills Development<div data-empty=3D"true"><br /></div>Regar=
ds,<br />FDC Training Team<br />Telephone office: +254712260031<br />Email =
training@fdc-k.org<br /><img src=3D"http://info.fdc-k.co.ke/media/images/51=
a4337c8cef42c13752f96b79a3593e.png" class=3D"fr-fic fr-dib" style=3D"width:=
 944px; height: 92.4891px;" width=3D"944" height=3D"92.4891" /><div data-em=
pty=3D"true"><br /></div><strong>You can opt out of future communications a=
bout our services by clicking on the unsubscribe link below.Thank you</stro=
ng></div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </div>
<img height=3D"1" width=3D"1" src=3D"http://info.fdc-k.co.ke/email/606e942a=
5af74291533850.gif" alt=3D"" />
If you'd like to unsubscribe and stop receiving these emails <a href=3D"htt=
ps://u17430347.ct.sendgrid.net/wf/unsubscribe?upn=3Dc1k-2BuaaF0K8LeZYcvAHob=
564iJ76fFRUCHqRrh-2F2aEgMxXct1mETJR7aXvNBjVBG-2FamAyoEalGlIQQEakwH9yoPOpJU6=
Oil1R7ftipnGjjkTQ2W3u4uM1hwyP78Z9ZZSB8Ip6dTeChmeSg76i1zPY-2BCseV0nBxIGd9UjC=
dL6Tqr1qpufeseVBwfkSh8njz7h7rF8tR3ylMiKHDK1QqUTMUiYFTD7zUx2-2FQNquzr9SfiBAL=
8mcqgirFYxXaen2N9N">click here</a>.
<img src=3D"https://u17430347.ct.sendgrid.net/wf/open?upn=3Dc1k-2BuaaF0K8Le=
ZYcvAHob564iJ76fFRUCHqRrh-2F2aEgMxXct1mETJR7aXvNBjVBG-2FamAyoEalGlIQQEakwH9=
ytZqGwrzzP9yWrIcSTAGsKL0I88SM2om2Mezz-2B9GIm4rHYvWxW2q8nFoYJRKWQA1vhd2zDrEF=
bsQ-2Fq-2B-2FRnNh52AOVFVSRAeARLlHsleMS88t59U1pn2N6zWvhokHoLIEQ0kdNV0pJ0ons7=
dro-2BHkXPhspXAlfAY6pi3G5sEWGrxJ" alt=3D"" width=3D"1" height=3D"1" border=
=3D"0" style=3D"height:1px !important;width:1px !important;border-width:0 !=
important;margin-top:0 !important;margin-bottom:0 !important;margin-right:0=
 !important;margin-left:0 !important;padding-top:0 !important;padding-botto=
m:0 !important;padding-right:0 !important;padding-left:0 !important;"/>
</body></html>


--===============5864809734557149713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5864809734557149713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5864809734557149713==--
