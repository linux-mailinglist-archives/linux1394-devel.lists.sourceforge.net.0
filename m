Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0C835305F
	for <lists+linux1394-devel@lfdr.de>; Fri,  2 Apr 2021 22:44:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lSQe3-0003hC-1E; Fri, 02 Apr 2021 20:43:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ftgyhv@hotmail.com>) id 1lSQe1-0003gh-UH
 for linux1394-devel@lists.sourceforge.net; Fri, 02 Apr 2021 20:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Content-Transfer-Encoding:Content-Type:To:
 Subject:From:Sender:Reply-To:Message-ID:Cc:MIME-Version:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KMg3uvqOFSDHRYxUdzH+EcosJZ8T5nBb8NmCy8IxD9w=; b=BL77B6zjX1gyo9WTMdiJfd0hgl
 3TOYAU/7w1Wkg6UKQ6L5BHaSuN2JxdvvIYRZYITZ13c1rJXRaaWfItb8ywrsXcUXO6tPLASsvDZq0
 xEWjHylV1xwbUwAqARSkQuapTfDEH3Hrp5sX6zUeJlICsI4NtMv/JCVzHfWreQeMtJk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Content-Transfer-Encoding:Content-Type:To:Subject:From:Sender:
 Reply-To:Message-ID:Cc:MIME-Version:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KMg3uvqOFSDHRYxUdzH+EcosJZ8T5nBb8NmCy8IxD9w=; b=jjFmphxh//moTWDS9fIDpentLo
 TrSQE0eUBrJ8AgAW737PXp5YgPZmQ2ILPRYnvwePFxxXCidCrhZqGakockvpYzYaLNbqrQ9ByvxIP
 ArUL0G8kriuI07hzj9p6qXCbrhh/pWL5rKvbs1ZVHDZCkh5ENj90liMACgCE8XmzczE8=;
Received: from [182.86.173.45] (helo=hotmail.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1lSQdg-0003kU-Ro
 for linux1394-devel@lists.sourceforge.net; Fri, 02 Apr 2021 20:43:53 +0000
From: ftgyhv@hotmail.com
Subject: =?GB2312?B?vfiz9r/abDg4MjMzNzc2OTA=?=
To: linux1394-devel@lists.sf.net
Date: Sat, 3 Apr 2021 04:40:51 +0800
X-Priority: 3
X-Mailer: Foxmail 4.2 [cn]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (ftgyhv[at]hotmail.com)
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [182.86.173.45 listed in bl.mailspike.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSQdg-0003kU-Ro
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
MIME-Version: 1.0
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
Message-Id: <E1lSQe3-0003hC-1E@sfs-ml-1.v29.lw.sourceforge.com>

ye7b2tK7z9+z9r/asai52DrRzszvLyDJ37/aIC/G1bv1vNu48dPFysajoQoKvt/M5cfltaWxqLzb
o6y1sczst6LLzaGjCgrTxcrGvdO58dPFysa4z73YudijodTTu/WjrMLytaUrzcvLsLy4xrSjrCC1
58b3INLCzu8g1NPO7yC158nMufG1yKOhzai52L/svd2jrLLp0enCyrXNCgq0+rDsILj31tbH5bnY
taXWpCAgCrj31tay+rXY1qSjrCAKuPfW1s7EvP7Iz9aktPPKubndo6wKCrj31taz9r/a0O2/ydak
o6wgCrj31tbW8cS+6/jB+LLdzai52LWlo6wgCrj31tbC8rWlsai52KOsCgq6o9TLs/a/2rGoudih
o7XItci9+LP2v9rW3LHf09C52MCtwK3U09TT0rXO8SAK0KHVvGw4ODIzMzc3NjkwIM6i0MXNrLrF
CgoKUVE7Nzc5MjEwNjU5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbWFpbGluZyBsaXN0IGxpbnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgxMzk0
LWRldmVsCg==
