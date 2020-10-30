Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BB32A0A2C
	for <lists+linux1394-devel@lfdr.de>; Fri, 30 Oct 2020 16:47:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kYWcW-0001Ju-Dt; Fri, 30 Oct 2020 15:47:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3eTWcXxEJAFg601H84BJ7EC0IZQRQ6C08B.2EC@trix.bounces.google.com>)
 id 1kYWcV-0001Jh-6t
 for linux1394-devel@lists.sourceforge.net; Fri, 30 Oct 2020 15:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Date:Message-ID:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AvbpiFc9WxMtxpkmlK4I2xhF0ZyztA65cacLJ7fZaLg=; b=L/8B77CkwLD4mffvvKAL+zgCsG
 07dJ9Bbkw4O59mOOWfCmFO8czpLsJ59CcJuRvuGIE5wgWMSx0vohXGCnEM8CfSRd2aSbmyGTSsDAK
 6ZiXQGD3shIaIgcpJgpG7gLY+PvRxiEkxdiBEUx8fk//V0575zujAW4doU22J2xxiCmQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Date:Message-ID:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AvbpiFc9WxMtxpkmlK4I2xhF0ZyztA65cacLJ7fZaLg=; b=a
 GvsYL+cyPyuxI5ba1HXH0Hknrw6JCy8K3iGhxUfI7IHNb2apIfNQw+6FnOzngvdI+RkRHI4Jx/jaS
 Q1AquEkc6bejMypv7fLqUSREdDBcQ7NDWOG0jEP7/q4btB4R/PJg3DmT84zdfHuWeAr56e9b06WTB
 C+b/40fSiyiZhT84=;
Received: from mail-qv1-f70.google.com ([209.85.219.70])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kYWcR-002k2H-MD
 for linux1394-devel@lists.sourceforge.net; Fri, 30 Oct 2020 15:47:15 +0000
Received: by mail-qv1-f70.google.com with SMTP id b13so4003569qvz.2
 for <linux1394-devel@lists.sourceforge.net>;
 Fri, 30 Oct 2020 08:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:message-id:date:subject:from:to;
 bh=AvbpiFc9WxMtxpkmlK4I2xhF0ZyztA65cacLJ7fZaLg=;
 b=i4DJXk35dBbRQz09q8flWFnCIf5aNgxoEd9uz32g62WXTSCwlKQ5NlVaslSL/kaa4u
 caz4c1jd6Q5UAFOQsPPYHdlR4saHP7Ls8w5UbnHWDJcR9dizeiXN22WC4P3GomjlrYBq
 QQXFKagT+gMzmSQC8Us5UKGzu035DhHG7FEu1A/5YVV1bD3nmnQtaUZYHOttSpuSoSgB
 Fltpi50LvHhCv8VjWzE0yAcHqMd9ro5U+/Jv8UrVmVq7Tc0exML3RYhfIsEbBTYlzqG8
 FkdXcYhB6rTkCNCxCba3EXu6ktttHCqv+ivq6B1BgKg6bBSmP1DfFl96rXDvaSvI7AUB
 paTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
 :from:to;
 bh=AvbpiFc9WxMtxpkmlK4I2xhF0ZyztA65cacLJ7fZaLg=;
 b=VKowqFnkYAJsZCEhRg01ro3+Cdf4tLOZHwWsqtLST23DUHcDOjKTomsZAdGJS8Wa1l
 pMYL26kQ/marrfgJx6RsT9M7GL8AelsWdOcCNRpk5sXyUE7ZIsszMFRClS+MpiIU8e0n
 dy4U/aPmPQkJo8PzMifX4ADe5kwJSWkUW74ZQUpXCZmUs7qp5zXV+PRTxz8oTFRfLwZV
 jQVWwwLA8IyyFJxwxD76kRMUYwMUkxlgw9QjpXQHMJo33RJ63LYo500V16dsLLrHOc+S
 8l57mFdR36Dgx8BEQIvmPGmljU79odGRhIFUBBpLTY5zHvhZVFOgK446lqDdd8Kb0GOk
 q2TA==
X-Gm-Message-State: AOAM532Hnish0c2MM8SQc4OCIBt08shm/ciIZc8JGFudVa3wrM3ZPnXW
 0JS5+n9Ca8pb/E0iepwYglavRcnq7vqWpsKyMzwd
MIME-Version: 1.0
X-Received: by 2002:ad4:54e9:: with SMTP id k9mt9940691qvx.18.1604072825497;
 Fri, 30 Oct 2020 08:47:05 -0700 (PDT)
X-No-Auto-Attachment: 1
Message-ID: <000000000000f53ae005b2e54eb1@google.com>
Date: Fri, 30 Oct 2020 15:47:06 +0000
Subject: Hi,
From: gabrielthomas9010@gmail.com
To: linux1394-devel@lists.sourceforge.net
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.70 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (gabrielthomas9010[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (gabrielthomas9010[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kYWcR-002k2H-MD
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
Reply-To: gabrielthomas9010@gmail.com
Content-Type: multipart/mixed; boundary="===============9209051932227536904=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============9209051932227536904==
Content-Type: multipart/alternative; boundary="000000000000fed56e05b2e54e4b"

--000000000000fed56e05b2e54e4b
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

I've invited you to fill out the following form:
Untitled form

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLScuNN46De4NTNDuI_3Rm2L6CNABd5Ra0TyGG6ZxgVbAw2h7Ug/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0&amp;usp=mail_form_link

  Hi,
Hope I am not intruding on your space here.
If you are interested in equity or loan financing,
I would be glad to assist.
We are a private financial firm that acquires well established small and  
lower
middle market businesses with predictable revenue and cash flow;
typically partnering with industry professionals
to operate them.
We also have a Capital Formation Division that assists companies at
all levels of development raise
capital through hedge funds. We charge %1 commission at the successful
closing of any deal.
Additionally, we also fund
secured as well as unsecured lines of credit and term loans.
Would that be something of interest to you and your group?
Please let me know your thoughts.
Sorry if you get this message in your spam box, poor network
connection may be responsible for such.
Best regards...... Gennadiy Medovoy.

Google Forms: Create and analyze surveys.

--000000000000fed56e05b2e54e4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"font-family: Roboto,Helvetica,Arial,sans-serif; margin=
: 0; padding: 0; height: 100%; width: 100%;"><table border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"background-color:rgb(103,58,183);" width=
=3D"100%" role=3D"presentation"><tbody><tr height=3D"64px"><td style=3D"pad=
ding: 0 24px;"><img alt=3D"Google Forms" height=3D"26px" style=3D"display: =
inline-block; margin: 0; vertical-align: middle;" width=3D"143px" src=3D"ht=
tps://www.gstatic.com/docs/forms/google_forms_logo_lockup_white_2x.png"></t=
d></tr></tbody></table><div style=3D"padding: 24px; background-color:rgb(23=
7,231,246)"><div align=3D"center" style=3D"background-color: #fff; border-b=
ottom: 1px solid #e0e0e0;margin: 0 auto; max-width: 624px; min-width: 154px=
;padding: 0 24px;"><table align=3D"center" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"background-color: #fff;" width=3D"100%" role=3D"presentation">=
<tbody><tr height=3D"24px"><td></td></tr><tr><td><span style=3D"display: ta=
ble-cell; vertical-align: top; font-size: 13px; line-height: 18px; color: #=
424242;" dir=3D"auto"> Hi,<br>Hope I am not intruding on your space here.<b=
r>If you are interested in equity or loan financing,<br>I would be glad to =
assist.<br>We are a private financial firm that acquires well established s=
mall and lower<br>middle market businesses with predictable revenue and cas=
h flow;<br>typically partnering with industry professionals<br>to operate t=
hem.<br>We also have a Capital Formation Division that assists companies at=
<br>all levels of development raise<br>capital through hedge funds. We char=
ge %1 commission at the successful<br>closing of any deal.<br>Additionally,=
 we also fund<br>secured as well as unsecured lines of credit and term loan=
s.<br>Would that be something of interest to you and your group?<br>Please =
let me know your thoughts.<br>Sorry if you get this message in your spam bo=
x, poor network<br>connection may be responsible for such.<br>Best regards.=
..... Gennadiy Medovoy.</span></td></tr><tr height=3D"20px"><td></tr><tr st=
yle=3D"font-size: 20px; line-height: 24px;"><td dir=3D"auto"><a href=3D"htt=
ps://docs.google.com/forms/d/e/1FAIpQLScuNN46De4NTNDuI_3Rm2L6CNABd5Ra0TyGG6=
ZxgVbAw2h7Ug/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D0&amp;usp=3Dmail=
_form_link" style=3D"color: rgb(103,58,183); text-decoration: none; vertica=
l-align: middle; font-weight: 500">Untitled form</a><div itemprop=3D"action=
" itemscope itemtype=3D"http://schema.org/ViewAction"><meta itemprop=3D"url=
" content=3D"https://docs.google.com/forms/d/e/1FAIpQLScuNN46De4NTNDuI_3Rm2=
L6CNABd5Ra0TyGG6ZxgVbAw2h7Ug/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D=
0&amp;usp=3Dmail_goto_form"><meta itemprop=3D"name" content=3D"Fill out for=
m"></div></td></tr><tr height=3D"24px"></tr><tr><td><table border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tbody><tr><td><a href=3D"h=
ttps://docs.google.com/forms/d/e/1FAIpQLScuNN46De4NTNDuI_3Rm2L6CNABd5Ra0TyG=
G6ZxgVbAw2h7Ug/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D0&amp;usp=3Dma=
il_form_link" style=3D"border-radius: 3px; box-sizing: border-box; display:=
 inline-block; font-size: 13px; font-weight: 700; height: 40px; line-height=
: 40px; padding: 0 24px; text-align: center; text-decoration: none; text-tr=
ansform: uppercase; vertical-align: middle; color: #fff; background-color: =
rgb(103,58,183);" target=3D"_blank" rel=3D"noopener">Fill out form</a></td>=
</tr></tbody></table></td></tr><tr height=3D"24px"></tr></tbody></table></d=
iv><table align=3D"center" cellpadding=3D"0" cellspacing=3D"0" style=3D"max=
-width: 672px; min-width: 154px;" width=3D"100%" role=3D"presentation"><tbo=
dy><tr height=3D"24px"><td></td></tr><tr><td><a href=3D"https://docs.google=
.com/forms?usp=3Dmail_form_link" style=3D"color: #424242; font-size: 13px;"=
>Create your own Google Form</a></td></tr></tbody></table></div></body></ht=
ml>
--000000000000fed56e05b2e54e4b--


--===============9209051932227536904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============9209051932227536904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============9209051932227536904==--

