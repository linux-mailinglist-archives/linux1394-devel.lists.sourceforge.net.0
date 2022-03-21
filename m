Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AED64E27E4
	for <lists+linux1394-devel@lfdr.de>; Mon, 21 Mar 2022 14:41:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nWI9Y-0001TR-LW; Mon, 21 Mar 2022 13:41:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ror.mcn@bookitevents.com>) id 1nWI9X-0001TL-7g
 for linux1394-devel@lists.sourceforge.net; Mon, 21 Mar 2022 13:41:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b8TEW1AOxMRWJvYZo3REPM3MguzlJBxS2ZbVjZBc1Qc=; b=cRl7/LWF8QcWQg1PQUYFGZ+bmU
 jdUniffqzNbW5d96kit3dUPdYC5/9YqWnOhlW1uEBkfB+Qkw76bxLu3T+RI2+8MV9wBMEXExvwvxJ
 OXgUoamDBDUpB966Pl9VMYMscSXWinX6vHk5GpgmuW0w5RV9w56+1mLWp4crk+avTQs4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=b8TEW1AOxMRWJvYZo3REPM3MguzlJBxS2ZbVjZBc1Qc=; b=X
 dcS3gCzIWJcmMy0Rdfr7U2I5WomBe4Y6xVry2UpWJF+u0Jq0g2Gb9/pBwlWXWimJnn3pK6r9n2DfY
 WqIaZqvaElFF6JLQ4jbUMEAElZ7FOsW/u+29GExY8mTLHgMV4D9xBo1RsDg/oM+DCbTEJeR6Fx+xA
 nryjStZggbxDgsDQ=;
Received: from domination.bookitevents.com ([185.102.170.218])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nWIHS-0003dR-7B
 for linux1394-devel@lists.sourceforge.net; Mon, 21 Mar 2022 13:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=bookitevents.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ror.mcn@bookitevents.com; bh=ka6usbMchhmzRKUz2BtOyHFU4Gk=;
 b=bAAk73GWKmZa0evb98X4Q5WLRKvxKhtoTATjOew0/5nqLJNRE+UccLiAxk3vCZ2Q5icANXlDoD2b
 CBAACG27QjLzwGsTDt/NAyTSJY1dySxTtw0s95MvOomHIehtIwMfnJkycHzSygEmQv3r9W+g0AX9
 ovGmtN5Z43AiTCouE44KBtUmx9+b6t9NKvX39nSFMMN54UPx5vU5RLdh/zjJofTLUJuq1AtrbWmZ
 swLLA9reBKCEI7n3n79WEU8T45Mxw7n2BVez+XqxeH2+jYiWNW0SJLqs8a81/6GOn5aptyQEkRES
 3pcbSj+r5ZpHCtzyfVLCUVbIlppPdrmvVJu3Rw==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=bookitevents.com;
 b=nl0ZkCm7Wk9mXDuWibjc24uMlXIAhbP2MUZxnNrpxj2CFQo+dk83iM4FaYqI39TJgUkl1i7guG9L
 6h4ewP+tIAYlCsBUmnpaWTbygPnWKH2jLVD20VsS8Xq0hMcMzKDDuwwO1cXwhY8waaIkwP3Oc3uK
 0alTjffsFQ6OER44Jpc3hTHkcCHSWCo3ssK40PSH9+fMMvUJfiH3OPydRbQ55Rx+TlGZ51QH9QU5
 dStkCUjKOBH2jDj8Ps/8tB53nWa2bDPnBnicn7o9aoCy3sQy3P1xKIDRmm0zak8ItKPtSDHhGCNe
 nTY16URIHrMM7cZlb3t9ws665LUvwwnPChUILg==;
From: Mustafa Ayvaz <ror.mcn@bookitevents.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Aufmerksamkeit:
Date: 21 Mar 2022 14:38:30 +0100
Message-ID: <20220321143830.07C280BCB5C761AA@bookitevents.com>
MIME-Version: 1.0
X-Spam-Score: 7.4 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Lieb linux1394-devel, Grüße Ich habe Ihren Kontakt bekommen,
    als ich nach einem Verwandten meines verstorbenen Klienten Herrn Robert gesucht
    habe, der aufgrund der Coronavirus-Krankheit sein Leben verloren hat, die
    er während s [...] 
 
 Content analysis details:   (7.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
             [Blocked - see <https://www.spamcop.net/bl.shtml?185.102.170.218>]
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [185.102.170.218 listed in dnsbl-1.uceprotect.net]
  0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
                             [185.102.170.218 listed in bl.mailspike.net]
  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
                             digit
                             [tomander231[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 LOTS_OF_MONEY          Huge... sums of money
  0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
  0.1 MONEY_NOHTML           Lots of money in plain text
  3.0 MONEY_FREEMAIL_REPTO   Lots of money from someone using free
                             email?
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1nWIHS-0003dR-7B
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
