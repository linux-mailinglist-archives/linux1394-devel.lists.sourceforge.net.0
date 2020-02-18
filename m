Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0AC16291D
	for <lists+linux1394-devel@lfdr.de>; Tue, 18 Feb 2020 16:13:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1j44Yc-0002sq-BB; Tue, 18 Feb 2020 15:13:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@rechtsberatung-schnyder.com>)
 id 1j44Yb-0002sa-HI
 for linux1394-devel@lists.sourceforge.net; Tue, 18 Feb 2020 15:13:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HZvJCU0tpM1NKUNgs+5YQ2mDS6Ea+bhXsAJHyyIZIoE=; b=dCV5RrOXDA9ow8DR55h555/wsx
 PUMRHjrufTYMybz+Bk7cvLV8fgrgRF8IfYG3irt2GSx7AXE84jSTXNN3VAk+yTGqj1QX14Rlpg12z
 yX26HxTzi9QKa+JNMbFPgx7ASuonfzleyySu6+ZkX44Dgk4KLXd+6QWqhu0+J1n5dI4k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HZvJCU0tpM1NKUNgs+5YQ2mDS6Ea+bhXsAJHyyIZIoE=; b=l
 RUYCje/ftAPWc7zJFe0htsPB79z2W+Frg40IKhlhO+x04JVlWmT4dK351wh6NvJfFteEcmKaXCP0n
 qaywnSka7LIalUW7WhxrzHTJWXzSA5WlegKlTqXjZz5KsxBpskeKk51L7J7NEu8o2pAXbBtJBigh4
 dFASjFAJqI0377tc=;
Received: from [152.89.244.197] (helo=rechtsberatung-schnyder.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1j44YZ-00GcVt-Vl
 for linux1394-devel@lists.sourceforge.net; Tue, 18 Feb 2020 15:13:05 +0000
From: info@rechtsberatung-schnyder.com
To: linux1394-devel@lists.sourceforge.net
Subject: Spende 
Date: 18 Feb 2020 16:12:57 +0100
Message-ID: <20200218161257.545D499CD4983C7D@rechtsberatung-schnyder.com>
MIME-Version: 1.0
X-Spam-Score: 6.4 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qq.com]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?152.89.244.197>]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [152.89.244.197 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j44YZ-00GcVt-Vl
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
Reply-To: claims.man@yandex.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

CkJpdHRlIGJlYWNodGVuIFNpZSwgZGFzcyBTaWUgZWluZSBwcml2YXRlIFNwZW5kZSBoYWJlbiwg
Z2VzcGVuZGV0IAphbiBTaWUuCgpGw7xyIHdlaXRlcmUgSW5mb3JtYXRpb25lbiDDvGJlciBBbnNw
csO8Y2hlIGtvbnRha3RpZXJlbiBTaWUgZGllc2UgCkUtTWFpbCA6IG9udWJlQHFxLmNvbQoKUmVn
YXJncwpTYW5kcmEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eDEzOTQtZGV2
ZWwK
