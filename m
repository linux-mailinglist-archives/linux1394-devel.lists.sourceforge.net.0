Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 576C13BDE06
	for <lists+linux1394-devel@lfdr.de>; Tue,  6 Jul 2021 21:26:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1m0qiH-0003RJ-MB; Tue, 06 Jul 2021 19:26:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <bounces+17430347-d4eb-linux1394-devel=lists.sourceforge.net@em9210.fdc-k.or.ke>)
 id 1m0qiE-0003R9-Kc
 for linux1394-devel@lists.sourceforge.net; Tue, 06 Jul 2021 19:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Subject:Message-ID:To:Mime-Version
 :From:Date:Content-Type:Content-Transfer-Encoding:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/akS+8FwSJp2IB4Pf8Mf8gcO3KVO7sujIQkz7DFFgNg=; b=mFooE4e1AjgM0IpjHvkjb5kLYq
 JCsm76/9aFv+0NqnOxa31vuJT2PaiqwQvouhaVUMoLcQydu9Lp3tKwyeuVtSfALDyv6AaDv5cGQXu
 bRQCZh5NNv0PqqviluhiajDQqHvIHoXTHmo2MLKS0Tk6tksbuvc3unT2TDn6gPGUVdWk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Subject:Message-ID:To:Mime-Version:From:Date:
 Content-Type:Content-Transfer-Encoding:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/akS+8FwSJp2IB4Pf8Mf8gcO3KVO7sujIQkz7DFFgNg=; b=P5258wAeKsWgz3mLvCLtHEJ4sB
 +b2rELfV4WTIh58OCaI7l/6x0IzW3NEfF38X/Rdz8mZVUL5N33N74QaedvibR0GMcJjHtO+t1LQEZ
 dLbBBefHgkjoEbqPq/WizSC7QqMO3mmST/H+NCTHZOHHX2fefypwuuh3w71M9Lg70pvs=;
Received: from wrqvqdbx.outbound-mail.sendgrid.net ([149.72.77.186])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m0qiA-0002uV-Rh
 for linux1394-devel@lists.sourceforge.net; Tue, 06 Jul 2021 19:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fdc-k.or.ke; 
 h=content-transfer-encoding:content-type:from:mime-version:to:subject:list-unsubscribe;
 s=s1; bh=/akS+8FwSJp2IB4Pf8Mf8gcO3KVO7sujIQkz7DFFgNg=; b=RAMTR7l
 XDQ3CSW3ZASe9NMyZh3N06KicBE/VuwJrBTs59SccWS8tsbnSLPoP9rF8bcImrhV
 O+OGqrcXgMOJ2laiPtcnmgR80FxB1DkKLFWkE6pOe99sb6KyvBDgiNyUReCpAQu5
 i5/pC8OHnjTFv7nfSEioaBI4A+s3pxMNrhoM=
Received: by filter2085p1las1.sendgrid.net with SMTP id
 filter2085p1las1-4678-60E45768-10
 2021-07-06 13:15:21.243163387 +0000 UTC m=+411735.322611655
Received: from MTc0MzAzNDc (unknown)
 by geopod-ismtpd-3-1 (SG) with HTTP id 2Ip27qEgRCKeH1xX1FB5cQ
 Tue, 06 Jul 2021 13:15:20.084 +0000 (UTC)
Date: Tue, 06 Jul 2021 13:16:47 +0000 (UTC)
From: "FDC -K" <workshops@fdc-k.or.ke>
Mime-Version: 1.0
To: linux1394-devel@lists.sourceforge.net
Message-ID: <2Ip27qEgRCKeH1xX1FB5cQ@geopod-ismtpd-3-1>
Subject: Invitation to Research Design,ODK,GIS,NVIVO and R Worksop Workshop
X-SG-EID: Pi9w8YTZchD2AGqRTKxcX/hvrtAIswiOm2Mb1qxwhorJ2gK7BB4dIUgR+dfk5XY8is3f9C5kd0DG+q
 WgxjwLwN85wbALCDuEURrvG1vC8blHT0Vs1JHPBolkRZDxu3JJDOXz8TaYPcyVsY5IyQuCymAwsp/+
 g3SA8sDLJvgh1INuTsp00t7L1lmPaBR3p+fwzuhbJgP1EDDeQCrZ7DinEZS3KS8Gi7kMiD57pgMuvV
 Odr1JhxJv/z4NVtomh0tXd
X-Entity-ID: lgZohGoWIjvYsKzlUpYsxA==
X-Spam-Score: 5.5 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?149.72.77.186>]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [149.72.77.186 listed in wl.mailspike.net]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1m0qiA-0002uV-Rh
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
Content-Type: multipart/mixed; boundary="===============7807797939437517677=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============7807797939437517677==
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
        <title>Invitation to Research Design,ODK,GIS,NVIVO and R Worksop Wo=
rkshop</title>
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
0" cellpadding=3D"0" cellspacing=3D"0">
                    <tbody>
                        <tr>
                            <td>
                                <div data-slot-container=3D"1" style=3D"min=
-height: 30px" class=3D"ui-sortable">
                                    <div data-slot=3D"text"><div data-empty=
=3D"true"><br /></div><a href=3D"http://url9271.fdc-k.or.ke/ls/click?upn=3D=
Ubf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6SHC7KEVTOlmVDfTSomTMWsmiATGf5kl=
yn24-2BvolCTboD9G4TTMLH77p2VnvDDl34r0YfquFsmVDmdZ-2BzM2eZ22VRNXr-2BdgUnnqRV=
-2BQo6MEd2bCthfp6A-2FvKYFtyURto3f4mTOBOO1GuLvYmo0RUtf24oo38JX7tI-2BvnoEmhw6=
BnBpvIGSBlC8DR-2F3JfbLcbdjKSOHWiv0KgwIgBmnA-2FvX8DkAOwEh1SMRsTQySPN2kAqRU-2=
F7J1L2x6sSw79EncY6I3DIL4NziOzalP-2Fddtx4aIHPGKo59-2Fsg6SPcbOsLYY7tuh6n-2BR4=
UpC5OeFLu7xvaeh0YS-2FPxeWN1hKIzxk8Q2L1lxiLk6q37pgF0bpskgsjcosbUJ-2BzqFqppK1=
DRCahwkQQKhRmm69PabJZ9cFE2eCHaQEkWAsjOlkWMvdPO-2B5Qx6qlJPKbzDHqrgAu4xWlhY-3=
DBJF9_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeq=
mO7ydtWvfuAtnxZzXsaJfsHf8KgOgOBEs5Wucr-2Bn7vQeUw9xa0-2Bev5AjjXyQBWzYMN1SYGK=
V85hxmZ1Hun9iPlJSRbF-2FCgXz3IquHoG5gS3bXkB-2B0t-2FJRQWEbfwisb9h4O0jJsWVK9-2=
F33HNHX29vVYmHYGoYhftlJnymGBTCvCPdvy6PJUxlahd7ZFLvhUZ" rel=3D"noopener nore=
ferrer" target=3D"_blank"><strong>Research Design,ODK mobile data collectio=
n,GIS data mapping,Data analysis using NVIVO and R Workshops-July 26 to Aug=
ust 06,2021 for 10 Days</strong></a><table border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" width=3D"0"><tbody><tr><td valign=3D"bottom" width=3D"708"=
><div data-empty=3D"true"><br /></div></td></tr></tbody></table><table bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"0"><tbody><tr><td val=
ign=3D"bottom" width=3D"1049"><div data-empty=3D"true"><br /></div></td></t=
r></tbody></table><a href=3D"http://url9271.fdc-k.or.ke/ls/click?upn=3DUbf5=
evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6SC6b02D0tvJWek-2Foh87eZu-2FAAIb-2Bb=
NG3GgY0WH18N9goLNhyWzc4XwPU8r2okkcDGqAIQOfKt3hjRBRyVA1fWndh1-2BXEUFTkrK7HCv=
bTCtXTn04ElrnIGUteUe4BaQZdh1cUGI0C8NPmWH702kkJwZ60WhTm-2F6ms-2BUO9ZWG3-2Faa=
pdutfzW3OA0kfjwfNh36vUqnOyrlSyUvxPtXaycvQdGcplHY1Vsbjc8-2F2Er8nsr6azlPjhZvn=
0I5yhWhjDdEUnXG4PlQQ5gMVyzp6Fg6sdySR3nkACma3CX7D2PzmK5ba0-2F5m28QX7lI7fzCcW=
L7efir7sl5fMkLysJ-2FaYcjmIfCYtzksCFh2hJgmYrz8f-2BLcpQF6lmBPpTHH4lUH-2FtX5zS=
fDs0lhTj4COdcxjZR-2BQbdhs-2FQEupZyc5bQNSRqIxNiq3RUuycT1KL1oJn73U5tA-3Dqx7u_=
9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydt=
WvfuAtnxZzXsaJc6lQTrkG-2BAb7cVrw5IsXwYSuKV6mVbbS732-2ByjI41IfLW-2BZnI1kRFb4=
PZGNQBaUZ0I-2BSGvImNtRuBPd-2FjJ8EKwJNlvEX-2B39zyaibeyy8zfomVk4WKe-2BBD0J9sr=
nzXSbCmtiY-2FVAjNyarryTHwpgep9NRH4nCrDqLnCvPTuCP0w4" rel=3D"noopener norefe=
rrer" target=3D"_blank">=C2=A0Register for online attendance Workshop</a><b=
r /><br /><a href=3D"http://url9271.fdc-k.or.ke/ls/click?upn=3DUbf5evRrSkpP=
wdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6SxN7LqfMEy2fAm4Yyfc8isVfiFdMMo-2B-2FtBdbypa=
y4ItqW52BL-2B-2FUtemCH4gG5sx3jDgVcJ4NUWniL7n6yk9meaQQI-2FV-2FHubRJpSSHgfBwS=
0h6geT20g-2BccaTYCXyKd92DAIBGQh5fOMyBW-2BKg7hupS7AqQ-2BRhWoy-2BfObtIntL0Cmu=
r7-2BakK-2B-2BN0ZEcgzH5Gdz05XWkpQG-2F1IpDcn4NuENQE-2F4w0Ct-2BLGttVbQPPEssDN=
2Sr6w4JxSyaeBkjA78tDQTgjQsmb4-2FvLkOw2XXE0x4-2Fslu3Zx3jVzCIB5M18li-2B8aCTeh=
U3x31AAKQLT1keUhtAm6rWSdK53KMJ8QMEyV-2Bd6ZKXSwIym4v4gulpVsJwwNKUgHbF9HP4rfx=
aOZXUkGqN6u9gitb3Erk7O-2BFa2nmr6ste7k6SNcPz1AyFNJT0UEV-2F6TCJkDGnmwyPe4ek-2=
FA-3DuK9i_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5=
tjeqmO7ydtWvfuAtnxZzXsaJeChWQqrc-2BBijFNqCizwXfV6wxFvDBnQu6X3PwrBqwm2cEnLUk=
9-2BnUA0tfuTUOsBYHhytPtlWfm4lQf089mI28UzH-2Fii6VcYWpiXxLevl23cnQY3qPOHpEx3l=
tpusujesn7qMoRKbTCvvDayCJGvGhM6tsrxjmVYxxGdPf1nfW3K" rel=3D"noopener norefe=
rrer" target=3D"_blank">Register Onsite attendance workshop</a><br /><br />=
<a href=3D"http://url9271.fdc-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3-2BNo8=
5Ax5S5a7tfns4DfJaFCSo6SkpQJnb4cxlBg-2FR7jVR4fBxg7eNiQiqQTxUCoPI0wv5i8vPM9zZ=
9ayYorQwQNdE-2FMFFI7AZN0-2FjxtRCtuuq4qKMwsm-2Bms9-2BIiDeomtv0oj5X1Cl2UChv6L=
D3dIJfbcnQETOMZyjpRsbTAM9bnUpBCgM1xyLxzneYyxBsT7Z3mShAQIMrPcsOMKh1Te5lFlDDP=
3S1UHsatyNmDFSjSfplplkc7uEI-2F-2BoSfqibCCk7pNm-2F2xnzSLssYpI04TIrbMbFK1ofxY=
LnQ7HhI7VdZkkWYk0YhjnacEkKnUPU2pzX9-2B4TWtGkue1U3rlNxSba8rkC794NnAS0W749FRr=
9flTFLwOJf1ih6r72UpNGCYYpkM9bc1U8yXYQkyLAGhrJgZBscr6p9PuAI94zj3jVZBTEOlg0xI=
Spa5HBbuv8Ac7Iv-2BOdvi48O1iS0OjU75hcVQtas-3Dcltm_9c2ZCZzrWFlb2tjmei9-2FZAE1=
DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJVLRndk4il6xS=
515Z2tcYUIKetiBMM38ArtRS5Z9a2LgHPfjeKVqlKeRk9UiOiFHQKp6P32WEsWiJPO56i4O9lP5=
VvKzinr7xZzvyxfKhfwCRIXS1LU0NTGz-2FyaXjMnKRRv07qMjxse4HKXcNyIKS6g4GWr6yWqpE=
vj7gpX3g6nN" rel=3D"noopener noreferrer" target=3D"_blank">=C2=A0Register a=
s a group workshop</a><br /><br /><a href=3D"http://url9271.fdc-k.or.ke/ls/=
click?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6Q7dsVRgarJPQrjWUnDH=
TBbZBlXRbcOxEdjYMREnuMh1cSuvLpTQCBeSRyUaQTZj2IfrV3DuMQ-2BQ3hPv1-2Fo7jI4Vn4L=
jpnag56b46n1mWxVb3oEpYx9m4UYxPbKy7ewSNgHktxBkmTJqiR0mgUbtRG4El7MwHRYxCtVzUu=
LwClnhpYBHFi8Oo-2B3uoixaOutxl7FYMBZVniY8kbiGJp0VDGE3fng-2FGne-2F951pfAF0WIX=
5PNTCd641WrpVoxYO0Du6OQ5bFuNC2u-2BaUhvlJkCINFGCIxp3ywocL2iMFdVM-2BNs6ZVt4ql=
xl0w38FrMLW4f3ulilLUXflwYBdgaXZBOD0Gn-2BRfDsmyrZchKIXqtvni5zYk0R-2Bd3jqwvMg=
RicbB42ttUwQD5vySDqCGL06CVo-2FenKiniSynErgFTvbFPph-2BwDIlV1bmFgjhvOJMBu7NxG=
50-3DOKDJ_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5=
tjeqmO7ydtWvfuAtnxZzXsaJVbV34I6zppZ23i56n8-2BDfe-2FRtz-2FmiqKA9UJ46b5V8KKOY=
cIsgiB5XzxuvoJcbfxuRftvJ30h95Sc4KkEnTB2zxyq-2FqNEjVZHC6LpElnHOpPnLaWFg3hBLK=
tXct4h4rJZEd7kShxe7SiMfI32aktx3xD7k9Ch-2FtxhN9hGmD8hnTq" rel=3D"noopener no=
referrer" target=3D"_blank">Download PDF Calendar 2021 Workshops</a><br />=
=C2=A0<br /><strong>Onsite Centers: Hilton Hotel, Prideinn and Meridian Hot=
el,Kenya</strong><div data-empty=3D"true"><br /></div>OFFICIAL EMAIL ADDRES=
S: training@fdc-k.org<br /><br />Office Telephone: +254712260031<div data-e=
mpty=3D"true"><br /></div><strong>INTRODUCTION</strong><br />New developmen=
ts in data science offer a tremendous opportunity to improve decision-makin=
g. In the development world, there has been an increase in the number of da=
ta gathering initiative such as baseline surveys, Socio-Economic Surveys, D=
emographic and Health Surveys, Nutrition Surveys, Food Security Surveys, Pr=
ogram Evaluation Surveys, Employees, customers and vendor satisfaction surv=
eys, and opinion polls among others, all intended to provide data for decis=
ion making.<br />It is essential that these efforts go beyond merely genera=
ting new insights from data but also to systematically enhance individual h=
uman judgment in real development contexts. How can organizations better ma=
nage the process of converting the potential of data science to real develo=
pment outcomes This ten days hands-on course is tailored to put all these i=
mportant consideration into perspective. It is envisioned that upon complet=
ion, the participants will be empowered with the necessary skills to produc=
e accurate and cost effective data and reports that are useful and friendly=
 for decision making.<br />It will be conducted using ODK, GIS, NVIVO and R=
<br /><strong>DURATION</strong><br />2 Weeks<br /><strong>LEARNING OBJECTIV=
ES</strong><ul type=3D"disc"><li>Understand and appropriately use statistic=
al terms and concepts</li><li>Design and Implement universally acceptable S=
urveys</li><li>Convert data into various formats using appropriate software=
</li><li>Use mobile data gathering tools such as Open Data Kit (ODK)</li><l=
i>Use GIS software to plot and display data on basic maps</li><li>Qualitati=
ve data analysis using NVIVO</li><li>Analyze t data by applying appropriate=
 statistical techniques using R</li><li>Interpret the statistical analysis =
using R</li><li>Identify statistical techniques a best suited to data and q=
uestions</li><li>Strong foundation in fundamental statistical concepts</li>=
<li>Implement different statistical analysis in R and interpret the results=
</li><li>Build intuitive data visualizations</li><li>Carry out formalized h=
ypothesis testing</li><li>Implement linear modelling techniques such multip=
le regressions and GLMs</li><li>Implement advanced regression analysis and =
multivariate analysis</li><li>Write reports from survey data</li><li>Put st=
rategies to improve data demand and use in decision making</li></ul><strong=
>WHO SHOULD ATTEND?</strong><br />This is a general course targeting partic=
ipants with elementary knowledge of Statistics from Agriculture, Economics,=
 Food Security and Livelihoods, Nutrition, Education, Medical or public hea=
lth professionals among others who already have some statistical knowledge,=
 but wish to be conversant with the concepts and applications of statistica=
l modeling.<br /><strong>TOPICS TO BE COVERED</strong><br /><strong>Module1=
: Basic statistical terms and concepts</strong><ul type=3D"disc"><li>Introd=
uction to statistical concepts</li><li>Descriptive Statistics</li><li>Infer=
ential statistics</li></ul><strong>Module 2:Research Design</strong><ul typ=
e=3D"disc"><li>The role and purpose of research design</li><li>Types of res=
earch designs</li><li>The research process</li><li>Which method to choose?<=
/li><li>Exercise: Identify a project of choice and developing a research de=
sign</li></ul><strong>Module 3: Survey Planning, Implementation and Complet=
ion</strong><ul type=3D"disc"><li>Types of surveys</li><li>The survey proce=
ss</li><li>Survey design</li><li>Methods of survey sampling</li><li>Determi=
ning the Sample size</li><li>Planning a survey</li><li>Conducting the surve=
y</li><li>After the survey</li><li>Exercise: Planning for a survey based on=
 the research design selected</li></ul><strong>Module 4:Introduction</stron=
g><ul type=3D"disc"><li>Introduction to Mobile Data gathering</li><li>Benef=
its of Mobile Applications</li><li>Data and types of Data</li><li>Introduct=
ion to common mobile based data collection platforms</li><li>Managing devic=
es</li><li>Challenges of Data Collection</li><li>Data aggregation, storage =
and dissemination</li><li>Types of questions</li><li>Data types for each qu=
estion</li><li>Types of questionnaire or Form logic</li><li>Extended data t=
ypes geoid, image and multimedia</li></ul><strong>Module 5:Survey Authoring=
</strong><ul type=3D"disc"><li>Design forms using a web interface using:</l=
i><li>ODK Build</li><li>Koboforms</li><li>PurcForms</li><li>Hands-on Exerci=
se</li></ul><strong>Module 6:Preparing the mobile phone for data collection=
</strong><ul type=3D"disc"><li>Installing applications: ODK Collect</li><li=
>Using Google play</li><li>Manual install (.apk files)</li><li>Configuring =
the device (Mobile Phones)</li><li>Uploading the form into the mobile devic=
es</li><li>Hands-on Exercise</li></ul><strong>Module 7:Designing forms manu=
ally: Using XLS Forms</strong><ul type=3D"disc"><li>Introduction to XLS for=
ms syntax</li><li>New data types</li><li>Notes and dates</li><li>Multiple c=
hoice Questions</li><li>Multiple Language Support</li><li>Hints and Metadat=
a</li><li>Hands-on Exercise</li></ul><strong>Module 8:Advanced survey Autho=
ring</strong><ul type=3D"disc"><li>Conditional Survey Branching</li><li>Req=
uired questions</li><li>Constraining responses</li><li>Skip: Asking Relevan=
t questions</li><li>The specify other</li><li>Grouping questions</li><li>Sk=
ipping many questions at once (Skipping a section)</li><li>Repeating a set =
of questions</li><li>Special formatting</li><li>Making dynamic calculations=
</li></ul><strong>Module 9:Hosting survey data (Online)</strong><ul type=3D=
"disc"><li>ODK Aggregate</li><li>Formhub</li><li>ona.io</li><li>KoboToolbox=
</li><li>Uploading forms to the server</li><li>Module 10:Hosting Survey Dat=
a (Configuring a local server)</li><li>Configuring ODK Aggregate on a local=
 server</li><li>Downloading data</li><li>Manual download (ODK Briefcase)</l=
i><li>Using the online server interface</li></ul><strong>Module 11: GIS map=
ping of survey data using QGIS</strong><ul type=3D"disc"><li>Introduction t=
o GIS for Researchers and data scientists</li><li>Importing survey data int=
o a GIS</li><li>Mapping of survey data using QGIS</li><li>Exercise: QGIS ma=
pping exercise.</li></ul><strong>Module 12:Understanding Qualitative Resear=
ch</strong><ul type=3D"disc"><li>Qualitative Data</li><li>Types of Qualitat=
ive Data</li><li>Sources of Qualitative data</li><li>Qualitative vs Quantit=
ative</li><li>NVivo key terms</li><li>The NVivo Workspace</li></ul><strong>=
Module 13:Preliminaries of Qualitative data Analysis</strong><ul type=3D"di=
sc"><li>What is qualitative data analysis</li><li>Approaches in Qualitative=
 data analysis; deductive and inductive approach</li><li>Points of focus in=
 analysis of text data</li><li>Principles of Qualitative data analysis</li>=
<li>Process of Qualitative data analysis</li></ul><strong>Module 14:Introdu=
ction to NVIVO</strong><ul type=3D"disc"><li>NVIVO Key terms</li><li>NVIVO =
interface</li><li>NVIVO workspace</li><li>Use of NVIVO ribbons</li></ul><st=
rong>Module 15:NVIVO Projects</strong><ul type=3D"disc"><li>Creating new pr=
ojects</li><li>Creating a new project</li><li>Opening and Saving project</l=
i><li>Working with Qualitative data files</li><li>Importing Documents</li><=
li>Merging and exporting projects</li><li>Managing projects</li><li>Working=
 with different data sources</li></ul><strong>Module 16:Nodes in NVIVO</str=
ong><ul type=3D"disc"><li>Theme codes</li><li>Case nodes</li><li>Relationsh=
ips nodes</li><li>Node matrices</li><li>Type of Nodes,</li><li>Creating nod=
es</li><li>Browsing Nodes</li><li>Creating Memos</li><li>Memos, annotations=
 and links</li><li>Creating a linked memo</li></ul><strong>Module 17:Classe=
s and summaries</strong><ul type=3D"disc"><li>Source classifications</li><l=
i>Case classifications</li><li>Node classifications</li><li>Creating Attrib=
utes within NVivo</li><li>Importing Attributes from a Spreadsheet</li><li>G=
etting Results; Coding Query and Matrix Query</li></ul><strong>Module 18: C=
oding</strong><ul type=3D"disc"><li>Data-driven vs theory-driven coding</li=
><li>Analytic coding</li><li>Descriptive coding</li><li>Thematic coding</li=
><li>Tree coding</li></ul><strong>Module 19:Thematic Analytics in NVIVO</st=
rong><ul type=3D"disc"><li>Organize, store and retrieve data</li><li>Cluste=
r sources based on the words they contain</li><li>Text searches and word co=
unts through word frequency queries.</li><li>Examine themes and structure i=
n your content</li></ul><strong>Module 20:Queries using NVIVO</strong><ul t=
ype=3D"disc"><li>Queries for textual analysis</li><li>Queries for exploring=
 coding</li></ul><strong>Module 21: Building on the Analysis</strong><ul ty=
pe=3D"disc"><li>Content Analysis; Descriptive, interpretative</li><li>Narra=
tive Analysis</li><li>Discourse Analysis</li><li>Grounded Theory</li></ul><=
strong>Module 22: Qualitative Analysis Results Interpretation</strong><ul t=
ype=3D"disc"><li>Comparing analysis results with research questions</li><li=
>Summarizing finding under major categories</li><li>Drawing conclusions and=
 lessons learned</li></ul><strong>Module 23: Visualizing NVIVO project</str=
ong><ul type=3D"disc"><li>Display data in charts</li><li>Creating models an=
d graphs to visualize connections</li><li>Tree maps and cluster analysis di=
agrams</li><li>Display your data in charts</li><li>Create models and graphs=
 to visualize connections</li><li>Create reports and extracts</li></ul><str=
ong>Module 24: Triangulating results and Sources</strong><ul type=3D"disc">=
<li>Triangulating with quantitative data</li><li>Using different participat=
ory techniques to measure the same indicator</li><li>Comparing analysis fro=
m different data sources</li><li>Checking the consistency on respondent on =
similar topic</li></ul><strong>Module 25: Report Writing</strong><ul type=
=3D"disc"><li>Qualitative report format</li><li>Reporting qualitative resea=
rch</li><li>Reporting content</li><li>Interpretation</li></ul><strong>MODUL=
E 26:Basics of Applied Statistical Modelling using R</strong><ul type=3D"di=
sc"><li>Introduction to the Instructor and Course</li><li>Data &amp; Code U=
sed in the Course</li><li>Statistics in the Real World</li><li>Designing St=
udies &amp; Collecting Good Quality Data</li><li>Different Types of Data</l=
i></ul><strong>MODULE 27: Essentials of the R Programming</strong><ul type=
=3D"disc"><li>Rationale for this section</li><li>Introduction to the R Stat=
istical Software &amp; R Studio</li><li>Different Data Structures in R</li>=
<li>Reading in Data from Different Sources</li><li>Indexing and Subletting =
of Data</li><li>Data Cleaning: Removing Missing Values</li><li>Exploratory =
Data Analysis in R</li></ul><strong>MODULE 28: Statistical Tools</strong><u=
l type=3D"disc"><li>Quantitative Data</li><li>Measures of Center</li><li>Me=
asures of Variation</li><li>Charting &amp; Graphing Continuous Data</li><li=
>Charting &amp; Graphing Discrete Data</li><li>Deriving Insights from Quali=
tative/Nominal Data</li></ul><strong>MODULE 29: Probability Distributions</=
strong><ul type=3D"disc"><li>Data Distribution: Normal Distribution</li><li=
>Checking For Normal Distribution</li><li>Standard Normal Distribution and =
Z-scores</li><li>Confidence Interval-Theory</li><li>Confidence Interval-Com=
putation in R</li></ul><strong>MODULE 30: Statistical Inference</strong><ul=
 type=3D"disc"><li>Hypothesis Testing</li><li>T-tests: Application in R</li=
><li>Non-Parametric Alternatives to T-Tests</li><li>One-way ANOVA</li><li>N=
on-parametric version of One-way ANOVA</li><li>Two-way ANOVA</li><li>Power =
Test for Detecting Effect</li></ul><strong>MODULE 31: Relationship between =
Two Different Quantitative Variables</strong><ul type=3D"disc"><li>Explore =
the Relationship Between Two Quantitative Variables</li><li>Correlation</li=
><li>Linear Regression-Theory</li><li>Linear Regression-Implementation in R=
</li><li>Conditions of Linear Regression</li><li>Multi-collinearity</li><li=
>Linear Regression and ANOVA</li><li>Linear Regression With Categorical Var=
iables and Interaction Terms</li><li>Analysis of Covariance (ANCOVA)</li><l=
i>Selecting the Most Suitable Regression Model</li><li>Violation of Linear =
Regression Conditions: Transform Variables</li><li>Other Regression Techniq=
ues When Conditions of OLS Are Not Met</li><li>Regression: Standardized Maj=
or Axis (SMA) Regression</li><li>Polynomial and Non-linear regression</li><=
li>Linear Mixed Effect Models</li><li>Generalized Regression Model (GLM)</l=
i><li>Logistic Regression in R</li><li>Poisson Regression in R</li><li>Good=
ness of fit testing</li></ul><strong>MODULE 32: Multivariate Analysis</stro=
ng><ul type=3D"disc"><li>Introduction Multivariate Analysis</li><li>Cluster=
 Analysis/Unsupervised Learning</li><li>Principal Component Analysis (PCA)<=
/li><li>Linear Discriminant Analysis (LDA)</li><li>Correspondence Analysis<=
/li><li>Similarity &amp; Dissimilarity Across Sites</li><li>Non-metric mult=
i-dimensional scaling (NMDS)</li><li>Multivariate Analysis of Variance (MAN=
OVA)</li></ul><strong>Module 33: Report writing for surveys, data dissemina=
tion, demand and use</strong><ul type=3D"disc"><li>Writing a report from su=
rvey data</li><li>Communication and dissemination strategy</li><li>Context =
of Decision Making</li><li>Improving data use in decision making</li><li>Cu=
lture Change and Change Management</li><li>Preparing a report for the surve=
y, a communication and dissemination plan and a demand and use strategy.</l=
i><li>Presentations and joint action planning</li></ul><strong>General Note=
s</strong><ul type=3D"disc"><li>All our courses can be Tailor-made to parti=
cipants needs</li><li>The participant must be conversant with English</li><=
li>Presentations are well guided, practical exercise, web based tutorials a=
nd group work. Our facilitators are expert with more than 10years of experi=
ence.</li><li>Upon completion of training the participant will be issued wi=
th Foscore development center certificate (FDC-K)</li><li>Training will be =
done at Foscore development center (FDC-K) center in Nairobi Kenya. We also=
 offer more than five participants training at requested location within Ke=
nya, more than ten participant within east Africa and more than twenty part=
icipant all over the world.</li><li>Course duration is flexible and the con=
tents can be modified to fit any number of days.</li></ul><strong>OTHER UPC=
OMING WORKSHOPS (REGISTER FOR THE COURSE AS INDIVIDUAL OR GROUP)</strong><b=
r /><br /><ul type=3D"disc"><li><a href=3D"http://url9271.fdc-k.or.ke/ls/cl=
ick?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6T8xRRw7PEGFyiJ8F0Yrga=
11xushHcj4MzBWazw-2Fokrw5Ltzwz5U5kRJ1O819uEK-2BC8H9M-2FKQH9fvGQSsCKXVIsZqkK=
-2F5iqb6JU9nWEnCoO5q1YSqcko-2BDTIQyJx5-2B2N-2Btc7qH4Wi7pT4f1l-2BLb3wqAFv4SB=
adpowW7l8006EQoe0ABCJ3FEgioXa7A1aRhCaIu6rtQtfDhX-2Fk1gpHxyJ7UlIhtjtqfTTO3kC=
HcAze7MBKrV0Fzn-2BayBzACoyI5IiKsLn7PVsDrzz6cfuFH3v3GbYg5qQEa9DFMkNNfS4-2Fbk=
D2VIWOmiWNYpfRPcwSHFmiAGFzTWbTMf-2FJZK7I5zJznMJdJhye82DMJyk-2FPFfR9zINDrLHR=
QUOkzOABema-2FUWpSyxLpDWkD-2FB7VJ4cXoak7PvpuY83wT2ieoud3v8MTGzvK-2FksavYgL4=
o7bY6BSAuY-3DLe8b_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gD=
HHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJXc-2Bs6-2FHq-2BbFbdPzNtsW5-2FrGd75-2Bqu2Jxw=
B6VqG-2BWDsJ0nvNIt5y1QEqaI52hEhTUbNikKT-2BNL-2Fx2kWDQtF-2FgsrEaSrjBJ1e3WC38=
OjzgLQchCQoKG1CR91xCo3jCbPJpAjhlctcpbi9tmyLv45vwbRyvjaRD9jVwZuH6BWwtXpm" re=
l=3D"noopener noreferrer" target=3D"_blank">Project Monitoring and Evaluati=
on with Data Management and Analysis Workshop from July 26,2021</a></li></u=
l><br /><ul type=3D"disc"><li><a href=3D"http://url9271.fdc-k.or.ke/ls/clic=
k?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6TVekRjS4ShP5XpebuX443A3=
bDFCCBsdvDhNd-2FUUD0jKaNVUeyWWNy8ms-2Fir6O4CzSupeX9AnkXIxF0ZebskAQx-2FIbN32=
w-2Fj8LHUD236XMZlgZCfPyaWSk62LZ2OJJRW-2BNB6zIGUfR7oBo-2B3KG0fqlPtc1TkgIGYp-=
2FWvlwJfq-2FoFlK0SUrZeIVraDVPH8xwj68RcD92hV-2FxR3ucgbNQfQLSGTqghTS1lGYs-2BH=
kmbXEVBmHcL2P0uJ16JWnGw2NCEztPc6-2B4FJixeeQiadMsNBSo8TFXjV8aj5VK1eT-2FWv7d8=
zcf-2FWiAYS3bFwLV3xW9zkVBTS8vIGgN8H21NyQpRfnJPiWEVFL9uAyx4po4bvKwYH67yOZkjf=
FBz5W1c2fjzrNfysLVa1MTYn16jm-2B1kiMp0DsU97Gua-2FdV-2FE7F49q6mJMCBvFwU7-2BvF=
oEQj5oX03I-3Db7yt_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gD=
HHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJSM1dGHRzHFtMVt5o2U2b5TUMYIuvPCt96M9dMn5ATNK=
sBc3jw5-2BUexIU3CqzbdUnogqeuOwLcVJkuXgILv7w8QMLZs3WvS2hmI6jE3rIpKFgFXa6r-2F=
Jigl-2FGQbQiUz69RhwXbO3VkiCIyDBIWfSO8k2fPcwee8Vgxdk7ti6sZKE" rel=3D"noopene=
r noreferrer" target=3D"_blank">GIS Data Collection, Analysis, Visualizatio=
n and Mapping Workshop from 02 August,2021 for 10 Days</a></li></ul><div da=
ta-empty=3D"true"><br /></div><ul><li><a href=3D"http://url9271.fdc-k.or.ke=
/ls/click?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6TyRyXXdaMF47OVE=
L2fds4tBc6qFY2EeG8ljyv630fc0WM0y35z-2BhMGuN84ZESG4mM4SgbZYwUxdj-2FIPqtHXVGD=
6Hiv2u3ACe6-2FesPLDKu25Y1Pf-2B11Bf4ZrVmtEXUZ3gdZMoBagveKTu50-2FXJvg-2FTxbeP=
CFI8DbcYcp2oSsPVc1irYOGOluqm-2BD3dPGqHbV8ewYw2WHtsHPguQ9MZI-2BBO4aGtUeITxQk=
-2B-2FfKe0JMbBaUKoxeb0HMzTrDATqCumag7xSVVg0pmMpx4zqxyJUZcaQv-2ByJN0f2UL6eeK=
h0-2FUvNQRYj8dkBWQeIY9Vn-2FLlf0PzXoJ-2Bak9Zs0YcoNUkY-2BOpKcspJHCJvapVlrL0RM=
4lHKvWshL681Mbft1Kcqg3gxav-2ByxfD1t5j-2FhQIWW-2FBJWGqHigLZPMq-2FbnTAi3PXfpI=
Y1Bdt-2B4ZyXu-2FkKFIET33VA-3DWIUy_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2=
BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJSlwjRW6TIOKbXoDLsj3C6LaEE6P=
dwaiQjlLHA4y-2F0ieGFGYhvrAZpr-2Bb4LdY2qz-2BZVCAim730EH82-2FBaHElPAGTIL-2Fxc=
9eEgqDJwOF0L3jHA7ORWdRBVCu-2BTMQ-2BMi9LPMEMer-2Ba2Z2jvYQXBJmD-2BqAY4tScLw0W=
iPa9YBh1WfOA" rel=3D"noopener noreferrer" target=3D"_blank">Strategic Commu=
nication Training For =C2=A0Managers And Executives Program Workshop from 0=
2 August,2021 for 5 Days</a></li></ul><div data-empty=3D"true"><br /></div>=
<ul><li><a href=3D"http://url9271.fdc-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwd=
M3-2BNo85Ax5S5a7tfns4DfJaFCSo6R5RpjhD9Ybbf7Bk8n1LDm1lJmMXRcsMQstrvvZ0REBTz9=
sUhTJST6uJTBnHiDfHo9xFfzanRD4707lalaj2qlLIo6DRpLF9kmoARwk4MzZLVnGa2z6zkKAWz=
K1Ncb5seS38l1EW-2F279mkxlXbY-2BCVIwghZ-2BB5WYiEgO7BkfApLoo4QjpemJU65dgl3zxK=
KEid3XHtfzHsZWRtRH-2B4jvNihSr2IbTRaNLoS0jHZW3LLypRJlubSbZBIRvCJ34XHKg-2B8ab=
7mxXPrUt5U4APbPb4ZNzZgA9kb08jXEx-2FB2UKhLTNErJ3lcX0OcP4pN1WPybSbRvGdVR-2Bm-=
2BPXhMsYyYAGa38yY-2FeRXdHUu4MJO5UiKeZwXmobRQeuaLwQaZiNovI7-2B59HfVZDdQwenvu=
wXyj4nlDYoOIJq-2FCoKOh-2B5Nd3zpq6i1hmsbv6iIbw4V9L1jbY-3DM-ha_9c2ZCZzrWFlb2t=
jmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJ=
aDwVnS3Sp1JVLFo8FySdmPFWvetVLSK-2BIPIrGqKPC7T0IRlmbjGS2rnoxeJ5xzSgf8SwkKiim=
t6YaflkC3Lm7yz5i-2BozkGJxlkDIrpcEwdJL0CaeUa3jx-2B-2FcOvuFa0-2BgTrmEP-2BBEsM=
R6Vc6bUZiGLo9fqIj9paikMyB1AnoC-2BjY" rel=3D"noopener noreferrer" target=3D"=
_blank">Monitoring and Evaluation for Governance Workshop from 09 August,20=
21 for 5 Days</a></li></ul><div data-empty=3D"true"><br /></div><ul><li><a =
href=3D"http://url9271.fdc-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax=
5S5a7tfns4DfJaFCSo6QppIA6juC0zsbLdG3wwWaObDomaWNsOJqOorV9k-2FiQij-2BmSrktgY=
m-2FZz-2BVlJxq3dPLx5mHTFNbkGD5NkJNvVhoJHhPZMDzA1wWU8H6YyzHtHIBfWdrWVlMc0H47=
ef9Q-2FByl0qtpErlk8TMmh9yooEHWiOXcETVzCiO7QCRsDYLVGPZ8rP6y7P2iVCn0tFJKvRX16=
us2skCfIRlL61H6ZMxlhlzOk-2BtYv1jNIfXFiQu3m2jcvc73VroLL35YraJD4098rXDNCS8rko=
EyVE-2B6ikQ5Tp5aWZ-2FtGQ8yqQE96N5rQYpSUO-2BWehjFidMC7n2Pxr0T2-2BOA9IaInbPo7=
ZGRmEKNJ22R-2B2-2BBHpfwSOyj-2FBMDEtr39MSuI620ocOqwjlvPOUU-2BzwBkntzUatFCFGJ=
ohvRUr3U4iTKOTaSO4Xg8TXi9cm1-2B5ru2letDC-2FTSJnBuU-3DJLZ4_9c2ZCZzrWFlb2tjme=
i9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJVRT=
nzAyXXfn5w5ZvJcjTGnNo3QtKCiSJEMsMUwY7tA-2BN9q5Ftbt79ZNGIdLukzP9bZh5wwt9tJEc=
Z09OxN99x-2B9WBZv-2BjmwZnubE3VsF03H2wlGdnRw38S0LjnKrvGpkUCMAi-2BCH5-2Fpjoxm=
YO2ix9oSqX8CTd3IbHxowOHswVlf" rel=3D"noopener noreferrer" target=3D"_blank"=
>Training Course on Microsoft Access Workshop from 09 August,2021 for 5 Day=
s</a></li></ul><div data-empty=3D"true"><br /></div><ul><li><a href=3D"http=
://url9271.fdc-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4Df=
JaFCSo6QwCyu5jTKHzc13Lg4xRm1dNusz8iOD4nD4f6p-2BKhCwSpeR4Smn1hlYQ9OZoABC12AG=
4oPnbYA9zz9iXOlauaLSmD1noWx2YMAnTjTm3tcSk3G-2F8mwybaXwchPx7n46-2BfVXdomQ-2B=
fl40xXdPG2Uoe11cGaZMrBeYLqaBSvR2tR8RIYeIdv0nJcg35Xu1FBFKasWKVKEu9OYYY2LkgNO=
utb2sSuloG1m3HlVfXAc-2F7c8HjXNiFDu0lIQJInmS3bRbMtLQZm-2Fa0q6zNcgrqTiXChUb26=
KQZ4G8moJKVTIbyNb1eo1IUlv8Ef-2BP4d0Zkrv9M9rDVFI5NRMQyq9AaAn3MEZEtqw87hFx6RL=
IwUbonZi3Pu24pM3QxGvkS-2B2P-2F64Rjzx8ZVRNBPoMIbkIgfOJ3YnnXfib3ybSgMfrVKdZ-2=
BMGHU5wpfI2jGj6zCerTRsNi7o-3DEb-D_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2=
BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJcaAFKL-2B73qTeDXEqBJZkSiB8H=
yVLf24Ad0tbwzD8VQlrsp2beLm1h-2BouFAvM9hTv04Ivso5rmfgBmtaxETr9cE0xR61TV3ekTU=
yn0vESwtHuwhyJZHOek1Is1gGb8RApWuznrgtt-2BGW4L9IILLLm0JtlNNyK2eP-2BzuA0NpFMq=
-2B1" rel=3D"noopener noreferrer" target=3D"_blank">Grant management using =
Sun accounting system Workshop from 09 August,2021 for 10 Days</a></li></ul=
><div data-empty=3D"true"><br /></div><ul><li><a href=3D"http://url9271.fdc=
-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6REiDtqL=
236lI088JmEf8ctSoBALLWWXpVKIEfz0o8eOHsN16hq0FcMWpdxJhGAGCUH7CJWrIRPk3z3u4vn=
Xs-2Bocqv60IDcFXP3z3WIDimLEIWn-2F1F-2BXMg-2BWNhlStMg-2FLNE7ZMA6wamCDdENdMUS=
IzHqzmIB3yAR704aIRbNuLwNBA5Aga-2Fy4MZk8r8WixibuFYtgnr0P0RojLCoz0-2FB24bERoc=
ZlS4QtLxegGm6t6S8IdwPZyY8GQgwYfrbpcBGSdHPDCnpEG8B2J-2FS65UNcZYC4OP5h4eHG9Tk=
ks-2FMq2VEjyBVASpB5jCwDOkjQ7E5SiExYI1PL1R6BJJi6l2pv8S4b6ZI41B1ZPnYkSAj0ZGYh=
HkL0VCVCJIlJierEZlILIjeJXhikpj2cDjnlmJgXs0tu9hnJgF1QLcNYij2iVAkmhXCgSGtP0Wz=
Tji2989rTc-3DTbNU_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gD=
HHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJfOe6zAN1GAfO-2BmKkvzfRFTXLllfVuZcxrjrQjpMcx=
-2Fs2YdSNn8cj-2BqnLh5OWfIUB9lt-2FVOjxQ0w3tEcmQnSgNHVTy2CQQ4eGVzeMjttRjLVDwX=
5MsZVHr1oND5E-2FZm0NwEtHrtCwfSStgRR3wb0uGvIjFdh8d3J4otx4l0WNmvr" rel=3D"noo=
pener noreferrer" target=3D"_blank">Financial Management, ERP systems, Acco=
unting, Capital budgeting, Presentation design, Management, and Negotiation=
 Workshop from 23 August,2021 for 5 Days</a></li></ul><div data-empty=3D"tr=
ue"><a href=3D"http://url9271.fdc-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3-2=
BNo85Ax5S5a7tfns4DfJaFCSo6QOzxTuJ6RVz2myzFpGWLWbVGqqtf1CcEe8vs5Zpqy8wF2ctuO=
MqvsGFKsNfU21l6Y-2FrDqqSOGjF9jv3KsqmEhDPUNgTXW1Aw5TbkOD-2BK8jIo5T2b-2Bo8Ma-=
2FGDB8z9KIasWuLC6iX7V-2B3SHywe42x95KMjlVL-2FbmnghYieEgIOwayqt1vGnWfvSh9PUxS=
POdpgAn95Cbjdakede-2BG5LJXYG9-2BCUHL8JHajYqy1wlVqVA-2FD-2FDCv5SJ049rIKVWq5q=
-2FC9G-2FQuyuXKanj4ANHUNVpEumwOOLEHO8Nnl1QHupAI9EEibK0s-2FoNEih1e2OLjfHA6e3=
aglaGRYcZCSLYpVHpIGUMYeHrI-2FRMfcKqNX5qVXhoc7Ew9wg-2BX9ljoBAW1IpFQ4k6JV05u0=
oBbAOVx4MEBuk0yH00Ps-2BWtaOwHrasbX5-2FbNxqhdVwAj5Q-2FC-2FhGktuE-3DDHSc_9c2Z=
CZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydtWvfu=
AtnxZzXsaJYwgKKihHv-2BvMqSY8vcDZyaJMtT3TA84m-2BCd2K2yOEz38LiAm-2Fhwy-2B85bY=
jMY2ZTE2nKQAcNcPCT2tMub-2BClPKcOZP1Tz7KW5iotH3C-2FAJN-2F6peNk1LKlo7cgfw9ltt=
-2BIRWaRyHZIRWFm4f-2F7N7PLiExilgHORq-2FNOWeLrVmE656" rel=3D"noopener norefe=
rrer" target=3D"_blank"><br /></a></div><ul><li><a href=3D"http://url9271.f=
dc-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6QOzxT=
uJ6RVz2myzFpGWLWbVGqqtf1CcEe8vs5Zpqy8wF2ctuOMqvsGFKsNfU21l6Y-2FrDqqSOGjF9jv=
3KsqmEhDPUNgTXW1Aw5TbkOD-2BK8jIo5T2b-2Bo8Ma-2FGDB8z9KIasWuLC6iX7V-2B3SHywe4=
2x95KMjlVL-2FbmnghYieEgIOwayqt1vGnWfvSh9PUxSPOdpgAn95Cbjdakede-2BG5LJXYG9-2=
BCUHL8JHajYqy1wlVqVA-2FD-2FDCv5SJ049rIKVWq5q-2FC9G-2FQuyuXKanj4ANHUNVpEumwO=
OLEHO8Nnl1QHupAI9EEibK0s-2FoNEih1e2OLjfHA6e3aglaGRYcZCSLYpVHpIGUMYeHrI-2FRM=
fcKqNX5qVXhoc7Ew9wg-2BX9ljoBAW1IpFQ4k6JV05u0oBbAOVx4MEBuk0yH00Ps-2BWtaOwHra=
sbX5-2FbNxqhdVwAj5Q-2FC-2FhGktuE-3DFfRv_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET=
0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJba3GphVwxA0AaZ2Aj5MBU=
MIJWPgRA-2FRcvEQlsV3lzYTdrsZxm69GCKVmsy0apAoybdJbbrt0qZhP3jtYR0iBhTtU0Lnobm=
iLJVbtZK-2FVrJmlNXKpOAUehlm7qGDCJsH4Tu5YNMyfUty1BYq6JlxaSH4W9hCTaaS6tD0pnye=
Rjvt" rel=3D"noopener noreferrer" target=3D"_blank">Mobile Data Collection =
using ODK &amp; KoboToolBox for Monitoring and Evaluation Workshop from 23 =
August,2021 for 5 Days</a></li></ul><div data-empty=3D"true"><br /></div><u=
l><li><a href=3D"http://url9271.fdc-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3=
-2BNo85Ax5S5a7tfns4DfJaFCSo6Q90czkJDPQUhE47rAGjvzshg1FLYZGPS0ngql7ioRkzH4oS=
eYjt7DVZf-2BFDre-2FBYOySZZa4c67n06BHGcqNM-2FxjaQ6kSlGyKv-2FhzpersD9fZMQdwnu=
LHec3R-2BI9kU3C1am5ZMr1LRFy-2BKgn34XeVC-2BkIj9wH-2Bor-2Boc4hIyVg9zpcwk8d8FY=
XpqtvFxRhCGesyy1u9O5qB0k9-2FtFO3zIoKN0tRKfkfIhF-2FYGTj8OckB6LsVoGrHtZudx4R-=
2BcBGYWMh0XRgqa8x38k5kcbIIGXb7rDpxKaxpAM2b9kqR354SwcJ9ODtX89uJH5QELCdSKanq5=
iAPsnD-2F3lCk7Rsl5wocPO6OT2e3-2B6xNEgK7MEGAyPwwDfpl-2F9HZ0RUKyxVPrciy6FUWop=
lIxl-2FmWB4L4ZNlf3ykdqn-2BgkRQ6yzJReryj7n45AZhxK5Rnc-2FGtwZYA88-3DzXIn_9c2Z=
CZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydtWvfu=
AtnxZzXsaJdqjceuJ7lKsezXs3sSnngIEYWguzoG6E0WYRqIUzhDZxBDLuAA-2BhDqOq2j4blp-=
2BJrLt8bWi9h8PUT5uRhCX4CRjchEcpC4ZlaxWmTIAql6GIWGWj-2Bz-2F4cQhQ4VQ1Q2p9ulMh=
A-2F3552oL75crpnaE9ST3FgKfigscb8n3qC-2BIFCZ" rel=3D"noopener noreferrer" ta=
rget=3D"_blank">Leadership and Diplomacy Training Workshop from 23 August,2=
021 for 5 Days</a></li></ul><div data-empty=3D"true"><br /></div><ul><li><a=
 href=3D"http://url9271.fdc-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3-2BNo85A=
x5S5a7tfns4DfJaFCSo6Q4L1k8NY6RN9OZO3hTvfQCC0jhR5revtj-2F1ZI1KjOYyavxAbF9snv=
qHdeUriyHI482XPCi-2B4zG-2FNu2AmwOe6GdhyY-2BKAZTxZZ9Vf08inr6C3oBcPU-2FJ4NK-2=
BvQQCofAa3B9XpNcRXChMa3Awj6T5m72xDbuuyF23TlCx-2FdlXIX9-2BzuSoqaOy0qLp8yW40G=
vRj6TMVqsJxW9tIgLDATyThaozOiAC9bhC7qKptKeRkHR3QAg8XMTz16hzdv8ifj-2BU6rW2Jvw=
6YABgmbDHuLsnT4KwrBUqrG6Cp9ebHUhfl-2FYuTTvXx-2FO8u4aGilBTr-2FSmussPWNrEErOQ=
mb43nJrRItLS-2BS7YII3BgY0dwF07AiD77OYUVA69dZpl8LylxFpAfLgL8VlhsPkW3g-2F3a-2=
BlcUsHmx5bqxENIZ2old9pM4L-2FQ3Qb4Li81z9axl7xQhGYs8s-3DtGf0_9c2ZCZzrWFlb2tjm=
ei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJSX=
81vFUAiLQs9ExAhaNW6sMG12FIuQZHPWQTJoHpydeYKaZep8Sl4huU7TrGgds9WO4IAT9Ip5mIW=
X-2Fs52pKZDUbmAEjkVF66KmYxLQxyBVYpGRT54WS6-2F4YgPHP1MCGMFTQpD9yBi4IzDJlP85w=
E8i2x6kN5KFEW1CydriH3KZ" rel=3D"noopener noreferrer" target=3D"_blank">Moni=
toring and Evaluation for Food Security and Nutrition Workshop from 30 Augu=
st,2021 for 10 Days</a></li></ul><br /><ul><li><a href=3D"http://url9271.fd=
c-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6QtRAVh=
Y5qOPG4ryR7ElgHMQitBoP1uIKR1Ra04bUoSCFUOpa3Kca33ec1nO1e3CGRJN8rTvNd-2BLOAHk=
l19QGzBLmnsIjjLFEzrQDxutzzlXqBdH-2FKurMZ1DwQzZ-2BIIOuQ4Oujf9PvOwfcn2fxunYec=
uXIYOf0-2BWpSosEOt1mMag13J5QtxN8mEiqsCXqk-2BnZyuc3Ox1usyqvFv7o-2FJDuxflQ5kK=
LFFZkvz8kDJCAix-2BiwOFJCsa4-2B8YIZk-2FPjwjfzgbJaqGNBYznc2R8E12rrfopP-2BcKZb=
5KS8N6j6qqqZo9iMd4djjhoEoLO9N8SH-2BOwrUKEnDoJ5FyQRMlzT1U-2BqLtIOBgzM63XPWcU=
h8Pzs-2FFKHef0dJbYZYqef8iDHZTYhmFX5dz8Ql5vsVMPLG1npjRQ8ksfHUgcFYoHEtKC4cf5r=
1UuOhlQFRgFXvYyKPGQ-3DrfLg_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAg=
ewWzHM8gDHHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJfrt5rhx99jxL6J1iJg-2BwSwTeBPbMUR0A=
csI7wt5GgDOi5To6nUL4AQbU-2FZmedkeUPrBdzRrWpU7kKcU0RyHpUZxEnfBPZb8RYn0kJ-2Fi=
4y-2FzziswyliMLhqCCYTYPkqHoR0YhzaS38jJhTidstXYxLJ9GC0ZxsHjYhuDP5-2BWh3f2" r=
el=3D"noopener noreferrer" target=3D"_blank">GIS and Data Analysis for WASH=
 (Water Sanitation and Hygiene) Programmes Workshop from 30 August,2021 for=
 10 Days</a></li></ul><br /><ul><li><a href=3D"http://url9271.fdc-k.or.ke/l=
s/click?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6SG3QpFCkVp3Q6KaVm=
N3rdjaA6kGoWM0wSNKjdB8E46QVhREXn9qvLUXhEXmWiv46ajVRJe3lz4lgyezRB2OBjfodQ49F=
QamTQzlqKRTiajTpyX6wUVWHSIXP-2FaeHtP3tRrZM3cDlWqQCGP-2B-2FkVg-2F-2FDN9L6-2F=
FLLZidpTXDAKj8a1XdYdGiUpJVKKfYr69BBZI9hvCkD2Ca0j7lJQzVpuJGbcdNe9ZjxgxvPg6NM=
7HBu8FbmXEVBPSvfKuZWmg9yVMo0I82u3GhuQP36iCz1ATb28UL5H8iw6YU8Jg-2BDbHKPo2aMD=
cOv4FNkJD9Z02mobhdxoIHDj0UflueNfujtIrAIImQCjUkwVTCGyEj4t6JkfJBk8I-2BYtEU4bL=
cUErxOefBlA-2BhZV5LiZh1OdIZifs6cXQv2QDjKLC4-2Bevw67G-2B3m4GpVs6T2WzfQDxyfmx=
8iAQ-3Dbwvb_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxho=
s5tjeqmO7ydtWvfuAtnxZzXsaJUyXSYHUpun6VCvjBtcmxoVcOK0ih7-2Bi4Spdgd8k1yJaYZRZ=
Dinn9NDzQCG3-2BBKwENbh835KdThQfyyawkaYdZgJMlHXQEArub6RJweF5sR-2BxyRb71FtFbj=
rxT8B8aEmmK95JDxduqBW1T7mqj7KRISONzV4VzLGORndi48KLoPw" rel=3D"noopener nore=
ferrer" target=3D"_blank">Advanced Management Program Workshop from 30 Augu=
st,2021 for 5 Days</a></li></ul><br /><ul><li><a href=3D"http://url9271.fdc=
-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3-2BNo85Ax5S5a7tfns4DfJaFCSo6RR44jNi=
g7YcIsqpJl1RxdWov-2B5LUEfHLgOgZehZRuRgNRcZbmY7-2B9RFz9DluXp2hkD8kD6c1J8Xg3X=
n9YVkI1P5IIqBF-2Ffps5-2FyE5QBYqHG-2FX7Kb20Ho1Lake9ybPX1VY-2FSvY6TFlnfNBYB8O=
TuRAbWhxCkUJPMBbAmFgW6Q6J2SQAnqXY4BZLLEBMGUH-2BUZijILQhInxwDWgO3LIsUkgqVh40=
wa2WQh6K0Ohln3L9T6GaGQlHeIB4JR8tNf52FcWrOvcldJME7tnvuV9BM8EHsdbz2nc99xld7wG=
9Zddd0t9671YpTN3cJ4LqLUtjIzrb5ZLBNQWodmIdNlB1ums7teHQFEzsobwufyagyLTAwMwqRv=
KgS3NBjImWA-2B7WdCa7eCGeAS3rciZV5QMqUSxm7M9gtIMOEednEz4-2FGX4obhYTPJTiJVI-2=
F7DQLYMV4ZuA-3DLtem_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8=
gDHHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJdy7-2Bh11WWua-2BrJ1AFuZ-2FZ9S9Z-2BkFhb0WY=
TtyTd2WEafQ1O-2FidRubhADWdsa8TsS-2F-2B-2Btwcbr1THk7T35e-2Bqi1UvcLkOvo-2BcXS=
FHfTYhaFnO0vh5wqJWNzsWJUBhBGf2IOUdxg6ZiiYnSR0D-2BEz25Ub2TUXIJgfZrktkSmLrfrl=
gC" rel=3D"noopener noreferrer" target=3D"_blank">Grant Management and Fund=
raising Workshop from 30 August,2021 for 10 Days</a></li></ul><br /><ul><li=
><a href=3D"http://url9271.fdc-k.or.ke/ls/click?upn=3DUbf5evRrSkpPwdM3-2BNo=
85Ax5S5a7tfns4DfJaFCSo6QyGxjAGbZWFS5R9yPsK-2BSZ19Ehou9icvo7MvLuTwooDOynEfbs=
TsGj2ZTgDMbDmCySKyhXizlg059GJY13CYC4OQZ-2B3UNxr3hOSrRX-2BESuYNWnex32hNX7wab=
n-2FY1figGQYnGBBhW-2BlfAlV-2FfO0MMFvjYXTMafuiOJRmmzfrP7B8dxasFTp2ngiLEwH5m3=
akzjww0Jeo6ZOTor-2FXyRlSv-2FZ-2Fu2CnUtiGGcJExh07tHRtvlBVLF5N-2B0rdmSOcQOOgl=
MDkG0L4OVBDYZWEXhbgGDFAGTM1qpVgRrxumSfryuOPDAlUVBIlzM4Yg50SxlWOVqJ5vuN8hiSz=
4ZYDK066Xaxa-2B-2FZpXLqMjc6R-2BSvXnkdbGPfuk7lWTCgfySjShaVb0YhvU3pzihTqS-2Bx=
PL35WF7NGdFt0wiQaAu1PjEyErY-2BVRmX0zA3jPaMV9h3uwBmSA-3DbARt_9c2ZCZzrWFlb2tj=
mei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeqmO7ydtWvfuAtnxZzXsaJW=
zcefIF-2BwBrC0a3zXSh9vu0JPH8u4dovNNE5JW4E56SGP0e9A9J6g8oXeYifPAByASVy1jsm2I=
BT-2BUur1LKCSEAkTPkABI1FCXTEZmhgCE6iZbM3G8iIRD1rrWy853a7V-2FZTVh5gUD-2B1Vpm=
f1arbOBE4nhJ9XG5dKbEB-2BqkQBI9" rel=3D"noopener noreferrer" target=3D"_blan=
k">Gender Equity Achievement in Development Projects Workshop from 30 Augus=
t,2021 for 5 Days</a></li></ul><br />Looking forward to your =C2=A0particip=
ation,<br />=C2=A0<br />FDC Result Based skills Development,<br />Regards,<=
br />FDC Training Team,<table border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" width=3D"0"><tbody><tr><td valign=3D"bottom" width=3D"708"><div data-em=
pty=3D"true"><br /></div></td></tr></tbody></table></div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </div>
<img height=3D"1" width=3D"1" src=3D"https://mautic.fdc-k.or.ke/email/60e45=
76250560441084864.gif" alt=3D"" />
If you'd like to unsubscribe and stop receiving these emails <a href=3D"htt=
p://url9271.fdc-k.or.ke/wf/unsubscribe?upn=3Dc1k-2BuaaF0K8LeZYcvAHob564iJ76=
fFRUCHqRrh-2F2aEgMxXct1mETJR7aXvNBjVBG9wQ98V-2FhaUmUnNoLfGBLor-2BnikAFMsd03=
QGcpK2X3jF6jjiUGI2aGIE5BxprejL4L4OmKxyBWMw-2Fab4tTG5dDW89jAsNd0ZrYzZoCzRet-=
2FAyfR-2FsAAwv-2F4rYaZAGzCRkFHHM-2BJqzwMnKQaymoQrhdvOz15iLcp4YGl5XWyomNBv-2=
FpPjLqDrgywMbbSyyHXRx">click here</a>.
<img src=3D"http://url9271.fdc-k.or.ke/wf/open?upn=3Dc1k-2BuaaF0K8LeZYcvAHo=
b564iJ76fFRUCHqRrh-2F2aEgMxXct1mETJR7aXvNBjVBG9wQ98V-2FhaUmUnNoLfGBLouGpUjk=
44OfvaWaeNfYKSMG1WYH1CjmjaNxek3-2FN6TJsS9LH7GeCRGDNCZBfXrn5huNKLylwMY5c6eCz=
iivB0EOKDnBgAQZJqrmhaFauI6e7ia8uAD448mKS3OlGdMqTv9OFujTTUek5eogTZmaCCJCy0ou=
cp58EoLsMgX8JcvRJ" alt=3D"" width=3D"1" height=3D"1" border=3D"0" style=3D"=
height:1px !important;width:1px !important;border-width:0 !important;margin=
-top:0 !important;margin-bottom:0 !important;margin-right:0 !important;marg=
in-left:0 !important;padding-top:0 !important;padding-bottom:0 !important;p=
adding-right:0 !important;padding-left:0 !important;"/>
</body></html>


--===============7807797939437517677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7807797939437517677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7807797939437517677==--
