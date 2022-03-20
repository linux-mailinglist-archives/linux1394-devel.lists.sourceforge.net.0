Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F894E1C76
	for <lists+linux1394-devel@lfdr.de>; Sun, 20 Mar 2022 17:03:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nVy1e-000504-8f; Sun, 20 Mar 2022 16:03:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ror.mcn@bookitevents.com>) id 1nVy1c-0004zw-3q
 for linux1394-devel@lists.sourceforge.net; Sun, 20 Mar 2022 16:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b8TEW1AOxMRWJvYZo3REPM3MguzlJBxS2ZbVjZBc1Qc=; b=PPPtFsPpica57y6uVG5qDrDEgv
 sCBlMfuZBzhlRj0mihbVNjOa6WYLQhWc3I3B0/gP4q7t0duqfikjFFyYLgD2eh4r2WY2tg1OJ0z1P
 Fj0k2QxsGkhS1ktAgca8wG6LB+Ni7GllB5vofkWIL2d9l5j9CspQqXvSwjo3hXlCvK8I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=b8TEW1AOxMRWJvYZo3REPM3MguzlJBxS2ZbVjZBc1Qc=; b=Y
 t8qmTOhKfYxje50v1fSweEIkVyPVoPTWRQMmcdcGMiPSCW3QEqT5e+xi6jv9rYAvgII7AsVeMAOOK
 zBw4//4DF7CMe4WStsWf5p+Fm2NW3LnXmerwJMAfrYiKCtmceW1PRISdkIt27J/HzOXIF2ELiHrCq
 wD0jqos1Bm6INCa8=;
Received: from domination.bookitevents.com ([185.102.170.218])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nVy1Z-0003De-KJ
 for linux1394-devel@lists.sourceforge.net; Sun, 20 Mar 2022 16:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=bookitevents.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ror.mcn@bookitevents.com; bh=ka6usbMchhmzRKUz2BtOyHFU4Gk=;
 b=nC0OaG8X7+vzgqQmIFtCzi+zhBk45K2gmDV3y4ZH0TlPicdRJaxIh/6ec1Cqq/RJaLGUortN1HHW
 y0q4cANbGZ/a0FDYTaEBG4PgSdP/OTvyXom/80yBbQa2ydNXhTGy8W//7cUuEE3xE0TcHs66v0v2
 AbvmuDzEQMy41Ha4+Zd/5yofbyH1wRVY0fddFyvL+vzpZwF4xclqVS90LKR7NDZdE+AH4CoSI5Wk
 SLPIH6rTBENJU+kyqpW+0eDO+omVGIIPk1etUcHi3Owk4LkyTy2zMzv7OknOEigMTAyXJNonk+cb
 bXmRc9jpfIQ1PjDjlsGaopUgtz1qIS4u+yuaOw==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=bookitevents.com;
 b=tOB1B2mesc43ueo+7/+ZADwE3dzvUIT5n2UpM/l5KtJ4F4wVxzJXn6TgEZC611XE8keeJVI8xA47
 n2NJ6oIyk4e574FsXQgVZCnHwc/IleWxwyW24qjGkushC3CL+dQdufKsIL5SWciX1TS66frkveyO
 aZt9+9FsO20M7oAkCFhlLIIHtbsHF5XJXntrfbzmGmNt3TCIOYfnSB9qlUe03/D8pEeHaQQ+Fvv1
 n6GOSFKmWpJ8uWMVfHdedTZhc6QSS6oLBUrdzyK6NToVjNPr50SghIEfKqxiuP5z7WOkwV0rjndk
 ul5UzCbdgN2S54Usf0tvJqQt2wGeARmzu56jaQ==;
From: Mustafa Ayvaz <ror.mcn@bookitevents.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Aufmerksamkeit:
Date: 20 Mar 2022 17:00:13 +0100
Message-ID: <20220320170013.7C4B142B3B54C04C@bookitevents.com>
MIME-Version: 1.0
X-Spam-Score: 6.0 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Lieb linux1394-devel, Grüße Ich habe Ihren Kontakt bekommen,
    als ich nach einem Verwandten meines verstorbenen Klienten Herrn Robert gesucht
    habe, der aufgrund der Coronavirus-Krankheit sein Leben verloren hat, die
    er während s [...] 
 
 Content analysis details:   (6.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [185.102.170.218 listed in dnsbl-1.uceprotect.net]
  3.0 REPTO_419_FRAUD_GM     Reply-To is known advance fee fraud collector
                              mailbox
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
                             digit
                             [tomander231[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 LOTS_OF_MONEY          Huge... sums of money
  0.0 MONEY_FREEMAIL_REPTO   Lots of money from someone using free
                             email?
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1nVy1Z-0003De-KJ
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
Reply-To: tomander231@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

CkxpZWIgbGludXgxMzk0LWRldmVsLAoKR3LDvMOfZQoKSWNoIGhhYmUgSWhyZW4gS29udGFrdCBi
ZWtvbW1lbiwgYWxzIGljaCBuYWNoIGVpbmVtIFZlcndhbmR0ZW4gCm1laW5lcyB2ZXJzdG9yYmVu
ZW4gS2xpZW50ZW4gSGVycm4gUm9iZXJ0IGdlc3VjaHQgaGFiZSwgZGVyIAphdWZncnVuZCBkZXIg
Q29yb25hdmlydXMtS3JhbmtoZWl0IHNlaW4gTGViZW4gdmVybG9yZW4gaGF0LCBkaWUgCmVyIHfD
pGhyZW5kIHNlaW5lciBHZXNjaMOkZnRzcmVpc2UgaW4gQ2hpbmEga29udGFrdGllcnQgaGF0LiBJ
Y2ggCmJpbiBzZWluIHBlcnPDtm5saWNoZXIgQW53YWx0IHVuZCBzdWNoZSBuYWNoIHNlaW5lbSBO
w6RjaHN0ZW4gCkFuZ2Vow7ZyaWdlbi4gQml0dGUgYXJiZWl0ZW4gU2llIG1pdCBtaXIgenVzYW1t
ZW4sIHVtIGRpZSAKw5xiZXJ3ZWlzdW5nIGVpbmVzIEZvbmRzIHp1IHNpY2hlcm4sIFZpZXIgTWls
bGlvbmVuIApWaWVyaHVuZGVydHp3YW56aWd0YXVzZW5kIERvbGxhciwgZGllIGVyIHp1csO8Y2tn
ZWxhc3NlbiBoYXQuIAoKQml0dGUga29udGFrdGllcmVuIFNpZSBtaWNoIHNvZm9ydCBmw7xyIHdl
aXRlcmUgSW5mb3JtYXRpb25lbi4KCkdyw7zDn2UKTXVzdGFmYSBBeXZhei4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgx
Mzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9saW51eDEzOTQtZGV2ZWwK
