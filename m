Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 757FA31C167
	for <lists+linux1394-devel@lfdr.de>; Mon, 15 Feb 2021 19:19:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lBiTF-0000Ce-0m; Mon, 15 Feb 2021 18:19:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <DSSE@LL.A6866>) id 1lBiTD-0000CS-5F
 for linux1394-devel@lists.sourceforge.net; Mon, 15 Feb 2021 18:19:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Content-Transfer-Encoding:Content-Type:To:From
 :Sender:Reply-To:Subject:Message-ID:Cc:MIME-Version:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m1lNhzxm2SkCevFjMINSwNYYH3So+pOrVfm+Cmhf9NI=; b=HnhKv3/EDRFWhK+MHdrpgNFYSD
 HtjS19qNHCrm6/X6lnBUVnW1XToWS/8O2UjfDl2lMBtk6WZx2G2Y2UfNKff0/k/WWfOn/qLnJRlDs
 tcgFI9XCpiZDQbJM/Z050ze9fa7jtFd+kydKp8KXwZZze82j+xxUlmuMJ6V73KYoie7M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Content-Transfer-Encoding:Content-Type:To:From:Sender:Reply-To:
 Subject:Message-ID:Cc:MIME-Version:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=m1lNhzxm2SkCevFjMINSwNYYH3So+pOrVfm+Cmhf9NI=; b=B
 Bdtmk8mYFM/UAD8Kxww6QuZslMGxhedwOM4wKaV5BNIaza20jtVSvbdnWp6U313qGuu36EWODnc2Y
 exiizEWCIpqKLqvjRhkZMpH5suY6+50dIoJDy18mwblab6ucucK/g8FGP8jgc4SisCjlfOK3+HNwH
 yIdhgURhhFIRlqqE=;
Received: from [59.63.206.206] (helo=LL.A6866)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1lBiSh-0003Po-3S
 for linux1394-devel@lists.sourceforge.net; Mon, 15 Feb 2021 18:19:28 +0000
Received: from PC-20201014KUSN[192.168.1.104] by LL.A6866
 with SMTP id 0623C866; Tue, 16 Feb 2021 02:18:27 +0800
From: =?GB2312?B?wbq35sH6o6i+rcDto6k=?= <DSSE@LL.A6866>
To: "linux1394-devel" <linux1394-devel@lists.sourceforge.net>
Date: Tue, 16 Feb 2021 02:18:36 +0800
X-Priority: 2
X-Mailer: Foxmail 4.1 [cn]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBiSh-0003Po-3S
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
Message-Id: <E1lBiTF-0000Ce-0m@sfs-ml-2.v29.lw.sourceforge.com>

usOjugqhoaGhoaEgsb65q8u+zqrLsM7xu/q52LT6v6q3oi/GscrayKi5q8u+o6zP1tPQyKu5+rj3
tPPKocrQtcTU9ta1y7DXqNPDt6LGsaGi1PbWtcuwxtXNqLeixrGhosuwteO1zaGjCqGhCiAgsb65
q8u+v8nPyL+qvt+3oi/Gsbj4ufO5q8u+o6y0/crVtb3R6dakzt7OysziuvPU2bi2v+6jocj0ufO5
q8u+09C0y9K1zvHQ6NKqo6y/ydaxvdPAtLXnwarPtaOhCiAKwaogz7UgyMujusG6t+bB+qOovq3A
7aOpCgq15yC7sKO6MTU5MTQxMTkwMDkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9s
aW51eDEzOTQtZGV2ZWwK
