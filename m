Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EA32CD1C8
	for <lists+linux1394-devel@lfdr.de>; Thu,  3 Dec 2020 09:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:To:Date:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WcNY3cSHMZtFpLwSqH5mlzGzK03xOi1RKqGu6rvNcMM=; b=ZwO5RZZ5pVu2qtwTtbw/y1WNBw
	CXkNuGhkJdb6nPXhuHjLIvlK+k802kXskfqTf/S7vk+AtePUHE59WXW+ocSrgYrFR1uARmRQxPDQd
	fyGn9hr1Ozws9DVM6acPpEc5IKy3+mOipUvl7ulAd9Yrlrf67ONT+jJ9V4+i02Yq8uGU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kkkLp-0001YS-R4; Thu, 03 Dec 2020 08:52:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <diego.sanchez@boldwhite24.com>) id 1kkkKp-0001Va-0d
 for linux1394-devel@lists.sourceforge.net; Thu, 03 Dec 2020 08:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hS3ibs4caZkahrzgcMN2TAJo2B2H5Muwb2NidDYlIzQ=; b=DImzIr7L/RpkbRAFDPkd9yg2Zw
 F7bddu/y6d6KIYR81QoeTTzoYipB6Q2auOqwU6I9GsOm9vKgYkmc3xKcvvUSJjgEif6aG2LFIa7gO
 +tYpqW1eVWGj7l23l1PAHWnf4Ebw8nvQoNJ1PrHjh/n0ixPS5r5b5wLU06zY5Tfd9K1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hS3ibs4caZkahrzgcMN2TAJo2B2H5Muwb2NidDYlIzQ=; b=S
 FEywxld+RBtZSEbE6rp3x4oNIst3qhT/v6/wQU9wSgEZ6+YNV4k9ZP0/rqvMnQCpvVonqcGRF7doN
 Fy05LE0GEq2AvrOGO4S5JWekHHxtBikjo5tTmvnB99bVALaYYsHPgO7twwifHOwQQNfwixr3v+goo
 uAYrHE96x4DgOmDg=;
Received: from mail.boldwhite24.com ([80.211.42.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kkkKh-00HTMJ-C9
 for linux1394-devel@lists.sourceforge.net; Thu, 03 Dec 2020 08:51:30 +0000
Received: by mail.boldwhite24.com (Postfix, from userid 1001)
 id 29070A30A4; Thu,  3 Dec 2020 08:50:25 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=boldwhite24.com;
 s=mail; t=1606985449;
 bh=hS3ibs4caZkahrzgcMN2TAJo2B2H5Muwb2NidDYlIzQ=;
 h=Date:From:To:Subject:From;
 b=SAAUw75LK8nqUlr9oWeHgBF174h2UKss1LrZQ4LqrU+gi6iG2pHv91uF/myHPAyDp
 Na40OcP/BR+MV76nMXjELVzd0TXC20yRpFsw1zkkxRD7RXut1Xwdh9bqgF+QhfRPJF
 WKwQETNPc79Tcj95OJVtmzUr751W49/KwcznbY1mXJtIz4DP7vSS/HwIXCtjXf3s2T
 Y3JNKWUYXfKsPSPtWFo39TtCMP6r8Zqwgy3YcsEVHD5DppCCVOUK651sU7Q/3Kc1XD
 MI9lIoQoWT626rCQqv5grvI+jlBum/gnw6+XB7tzLB3JPGnk6EB7aykJr5eX9DNEbI
 lC8HNT7u9Ph3Q==
Received: by mail.boldwhite24.com for <linux1394-devel@lists.sourceforge.net>;
 Thu,  3 Dec 2020 08:50:11 GMT
Message-ID: <20201203074501-0.1.2m.ang3.0.jltk1j44rh@boldwhite24.com>
Date: Thu,  3 Dec 2020 08:50:11 GMT
To: <linux1394-devel@lists.sourceforge.net>
Subject: Disinfection
X-Mailer: mail.boldwhite24.com
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kkkKh-00HTMJ-C9
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
From: =?UTF-8?Q? Diego_S=C3=A1nchez ?= via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: =?UTF-8?Q? Diego_S=C3=A1nchez ?= <diego.sanchez@boldwhite24.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

R29vZCBtb3JuaW5nLAoKbG9va2luZyBmb3IgY29tcGFuaWVzIGludGVyZXN0ZWQgaW4gcmFpc2lu
ZyBhZGRpdGlvbmFsIGNhcGl0YWwgYnkgZGl2ZXJzaWZ5aW5nIHRoZWlyIG9mZmVyIGluIHNvYXBz
LCBsaXF1aWRzIGFuZCBnZWxzIGZvciBoYW5kIGRpc2luZmVjdGlvbiBhbmQgY29zbWV0aWNzIGZv
ciBib2R5IGFuZCBoYWlyIGNhcmUuCgpUaGUgZGlzdHJpYnV0aW9uIG9mIGlubm92YXRpdmUgcHJv
ZHVjdHMgY29ycmVzcG9uZGluZyB0byB0aGUgY3VycmVudCBwcmVmZXJlbmNlcyBvZiBjdXN0b21l
cnMgaW4gdGhlIGZpZWxkIG9mIGh5Z2llbmUgYW5kIHByZXZlbnRpdmUgaGVhbHRoY2FyZSBhbGxv
d3Mgb3VyIHBhcnRuZXJzIHRvIGdhaW4gbmV3IG1hcmtldHMgYW5kIGFjaGlldmUgYmV0dGVyIGVj
b25vbWljIHJlc3VsdHMuCgpJbiBhZGRpdGlvbiB0byBwcm9kdWN0cyB3aXRoIGJhY3RlcmljaWRh
bCBhY3Rpb24sIG91ciByYW5nZSBpbmNsdWRlcyBzaG93ZXIgZ2Vscywgc2hhbXBvb3MgYW5kIGhh
aXIgY29uZGl0aW9uZXJzLCBhcyB3ZWxsIGFzIGVmZmljaWVudCwgY29uY2VudHJhdGVkIGRldGVy
Z2VudHMuCgpUaGUgdmVyc2F0aWxpdHkgKHN1aXRhYmxlIGZvciBhbGwgc2tpbiB0eXBlcykgY29t
YmluZWQgd2l0aCBhbiBhZmZvcmRhYmxlIHByaWNlIG1lYW5zIHRoYXQgY3VzdG9tZXJzIG1ha2Ug
YW4gaW5mb3JtZWQgY2hvaWNlIG9mIGEgcHJvZHVjdCBhbW9uZyBvdGhlcnMgYXZhaWxhYmxlIG9u
IHRoZSBtYXJrZXQuCgpBcmUgeW91IGludGVyZXN0ZWQgaW4gY29vcGVyYXRpb24/CgpEaWVnbyBT
w6FuY2hlegoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm1haWxpbmcgbGlzdCBsaW51eDEzOTQtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4MTM5NC1kZXZlbAo=
