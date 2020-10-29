Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA7429F21A
	for <lists+linux1394-devel@lfdr.de>; Thu, 29 Oct 2020 17:49:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kYB76-0004yG-E6; Thu, 29 Oct 2020 16:49:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3fPKaXxIJAM80vw3z88z.Ev1C9NLMS17v36.x97@trix.bounces.google.com>)
 id 1kYB75-0004xr-1y
 for linux1394-devel@lists.sourceforge.net; Thu, 29 Oct 2020 16:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Date:Message-ID:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=72r5PSh8zarO3Am7wiVk7fChHMJLkA5LlQrvWMcONUM=; b=fMw4RkKAEpYr64srGcOEaFBuiB
 UNqZAYdcP2voZmCgO/h6j6ubIpexQOmG5xZXrEMwqaq5slPYQ0rHoy/6m7cHjl8lIZnXixa0z489c
 dWProlQ1OA6HMkkcKDUmPrrjUqsaQPHigZ6k/4ERN/A3ML6PBXNQCN32U9AM+Vs0Uou0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Date:Message-ID:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=72r5PSh8zarO3Am7wiVk7fChHMJLkA5LlQrvWMcONUM=; b=b
 WprEKMW9l5IHTAb0rfCWCT6mYy/n/x1E0FHt+nlb3uOpGzFZHGcjTkobgtV0Fb/UjXVcbkfty+g4e
 iAhGrvIYjp4Lt3IMpecJlxQiTki2bSsOoRareD8k5s6ae3AOuoSzC4lB3jDDITMNOZCGbbzEGysQa
 gfvp9Ll0VIY+7Jqk=;
Received: from mail-qv1-f70.google.com ([209.85.219.70])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kYB6p-00Bn8a-Rn
 for linux1394-devel@lists.sourceforge.net; Thu, 29 Oct 2020 16:49:22 +0000
Received: by mail-qv1-f70.google.com with SMTP id eh4so2103682qvb.12
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 29 Oct 2020 09:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:message-id:date:subject:from:to;
 bh=72r5PSh8zarO3Am7wiVk7fChHMJLkA5LlQrvWMcONUM=;
 b=F5JiJs6OgoeG4+gX4txjAfqNdM8ajpLugoimDLsl089c98kTCr0bQlGZe4GPCgs8Xv
 J6nksl5Ov/yQZ6eXwAk8QsGd/KPzZr1ISdAhqI/+XSP3iCp6aTd5SZeIyH7YAqf9ggWW
 fSa1a9zicYU8+j45WKKsekcj4Ao7PyJot9dv4gWZeIQZrGS0eytf5BmLg3gdYI6d1Zxa
 BjAfDHiwml/gdoD1pAIowbzXian9H2e1hJtRe/14lsZEIPrpQLRRLun/5yeY1yhjBh2o
 0cCHOKO37iA6dusI1xYu951gt1pNOXLvvigxMv0C0uUA19IPdCZSptJrWmfAGiLfqciF
 c6gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
 :from:to;
 bh=72r5PSh8zarO3Am7wiVk7fChHMJLkA5LlQrvWMcONUM=;
 b=gUe2DMqX/AEg+9STqnZDctWqLdy3beevp1jyNdwCOwp5yYAG6mrdRRztUzzv5LN9AK
 7UjLvYBbCY15XdFcMcXvpFBO0ZVG1izmlHMG7mzgeRMdgp9FjcHNA4Ccu1w5sDtxC99s
 AniVnNuAmMpUJZYC+zNjWwiFu85oxlTPsRdKhYsPUo7PHqzZrJypZnLHyf0LUCfWZHw3
 no/nnEvoQdCcXTJh27wWszluE67owfXj5bG8r6si2zUV8v1TZqunMuwa+drJWHL0ixqy
 IkMxdPozKxTcnBcnoIGhprs0pzqd9G9ZqyPDaUrSXUI6Afqpq7y0oAJ9c8JNcBsFIcwD
 64AQ==
X-Gm-Message-State: AOAM530xAAZzf5cM3LjyBfIGsxrFedcZEprsj9cCIBau5sZpfaj9Ng6M
 b+VxRhy+vjm/7Mbv4efY+i+AkRS/77NZ7Vaxkgh2
MIME-Version: 1.0
X-Received: by 2002:ac8:6953:: with SMTP id n19mt4312459qtr.315.1603990140181; 
 Thu, 29 Oct 2020 09:49:00 -0700 (PDT)
X-No-Auto-Attachment: 1
Message-ID: <000000000000876a0e05b2d20e4f@google.com>
Date: Thu, 29 Oct 2020 16:49:02 +0000
Subject: Could you help me in this transaction?
From: fabienne.tagro2017@gmail.com
To: linux1394-devel@lists.sourceforge.net
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (fabienne.tagro2017[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.70 listed in wl.mailspike.net]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (fabienne.tagro2017[at]gmail.com)
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kYB6p-00Bn8a-Rn
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
Reply-To: fabienne.tagro2017@gmail.com
Content-Type: multipart/mixed; boundary="===============3030492292045536562=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============3030492292045536562==
Content-Type: multipart/alternative; boundary="000000000000a807c905b2d20e0c"

--000000000000a807c905b2d20e0c
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

I've invited you to fill out the following form:
Untitled form

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLSe1wBhXSQ5Skw4YywgnRWiOLeNuYO0dbmnMnsDvN4YAMDRi3A/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0&amp;usp=mail_form_link

Hello Dear,

I am very sorry that my letter may come as a surprise to you since we have  
never met each other before. I am Miss Nidal Aoussa. I am the only daughter  
of Cheikh Ag Aoussa, the President of (HCUA) in Mali who was assasinated on  
the octobre 2016.

https://www.jeuneafrique.com/365432/politique/mali-sait-on-mort-de-cheikh-ag-aoussa/
https://fr.wikipedia.org/wiki/Cheikh_Ag_Aoussa

I have a business transaction which i solicit your help. It is all about a  
fund to be transferred in your country for urgent investment on important  
projects. I want you to guide me and invest this money in your country.  
This fund amount to Eleven Millions Five Hundred Thousand United States  
dollars which i inherited from my late dad.. If you are capable of handling  
or participate in this transaction, kindly respond quickly through my  
private emails to enable me give you more details about this fund and how  
this project shall be carried out. I will accord you 20% of the total fund  
for your kind assistance. Respond through this my private emails addresses  
below.

Miss Nidal Aoussa
Email: ( nidal.kong1998@gmail.com )

Google Forms: Create and analyze surveys.

--000000000000a807c905b2d20e0c
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
424242;" dir=3D"auto">Hello Dear,<br><br>I am very sorry that my letter may=
 come as a surprise to you since we have never met each other before. I am =
Miss Nidal Aoussa. I am the only daughter of Cheikh Ag Aoussa, the Presiden=
t of (HCUA) in Mali who was assasinated on the octobre 2016.<br><br>https:/=
/www.jeuneafrique.com/365432/politique/mali-sait-on-mort-de-cheikh-ag-aouss=
a/<br>https://fr.wikipedia.org/wiki/Cheikh_Ag_Aoussa<br><br>I have a busine=
ss transaction which i solicit your help. It is all about a fund to be tran=
sferred in your country for urgent investment on important projects. I want=
 you to guide me and invest this money in your country. This fund amount to=
 Eleven Millions Five Hundred Thousand United States dollars which i inheri=
ted from my late dad.. If you are capable of handling or participate in thi=
s transaction, kindly respond quickly through my private emails to enable m=
e give you more details about this fund and how this project shall be carri=
ed out. I will accord you 20% of the total fund for your kind assistance. R=
espond through this my private emails addresses below.<br><br>Miss Nidal Ao=
ussa<br>Email: ( nidal.kong1998@gmail.com )</span></td></tr><tr height=3D"2=
0px"><td></tr><tr style=3D"font-size: 20px; line-height: 24px;"><td dir=3D"=
auto"><a href=3D"https://docs.google.com/forms/d/e/1FAIpQLSe1wBhXSQ5Skw4Yyw=
gnRWiOLeNuYO0dbmnMnsDvN4YAMDRi3A/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;fl=
r=3D0&amp;usp=3Dmail_form_link" style=3D"color: rgb(103,58,183); text-decor=
ation: none; vertical-align: middle; font-weight: 500">Untitled form</a><di=
v itemprop=3D"action" itemscope itemtype=3D"http://schema.org/ViewAction"><=
meta itemprop=3D"url" content=3D"https://docs.google.com/forms/d/e/1FAIpQLS=
e1wBhXSQ5Skw4YywgnRWiOLeNuYO0dbmnMnsDvN4YAMDRi3A/viewform?vc=3D0&amp;c=3D0&=
amp;w=3D1&amp;flr=3D0&amp;usp=3Dmail_goto_form"><meta itemprop=3D"name" con=
tent=3D"Fill out form"></div></td></tr><tr height=3D"24px"></tr><tr><td><ta=
ble border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tbody>=
<tr><td><a href=3D"https://docs.google.com/forms/d/e/1FAIpQLSe1wBhXSQ5Skw4Y=
ywgnRWiOLeNuYO0dbmnMnsDvN4YAMDRi3A/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;=
flr=3D0&amp;usp=3Dmail_form_link" style=3D"border-radius: 3px; box-sizing: =
border-box; display: inline-block; font-size: 13px; font-weight: 700; heigh=
t: 40px; line-height: 40px; padding: 0 24px; text-align: center; text-decor=
ation: none; text-transform: uppercase; vertical-align: middle; color: #fff=
; background-color: rgb(103,58,183);" target=3D"_blank" rel=3D"noopener">Fi=
ll out form</a></td></tr></tbody></table></td></tr><tr height=3D"24px"></tr=
></tbody></table></div><table align=3D"center" cellpadding=3D"0" cellspacin=
g=3D"0" style=3D"max-width: 672px; min-width: 154px;" width=3D"100%" role=
=3D"presentation"><tbody><tr height=3D"24px"><td></td></tr><tr><td><a href=
=3D"https://docs.google.com/forms?usp=3Dmail_form_link" style=3D"color: #42=
4242; font-size: 13px;">Create your own Google Form</a></td></tr></tbody></=
table></div></body></html>
--000000000000a807c905b2d20e0c--


--===============3030492292045536562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3030492292045536562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3030492292045536562==--

