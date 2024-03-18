Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CBD87E586
	for <lists+linux1394-devel@lfdr.de>; Mon, 18 Mar 2024 10:18:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rm98N-0007f7-6p;
	Mon, 18 Mar 2024 09:18:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rm98L-0007ex-GZ
 for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Mar 2024 09:18:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0RFvEZpgNJ5bK7Ro7X/Ka3XCibshAo7oB/5HUK+KVBQ=; b=KMwMawFCQ8m139ocvo+Lsncsvx
 5NyVIglGq2HD0pBMExGj6xvwSc0BTp7O2/S+w7ujNZPvIg1MJhqtP5kFIqtfbWvK6P/cdHx4Ligxq
 Tpv2lzDSJLnepgRjyEyzWBKnK/4jbDkKl+WLhoYEBOdCmHgI6LtRGJJSSPzA6SjxqIvI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0RFvEZpgNJ5bK7Ro7X/Ka3XCibshAo7oB/5HUK+KVBQ=; b=I7OGyjq12vFNzcwQX0RJp2PvSm
 kqQFzuNLwycjiF7D00qDDNjwruvuMKgUSvfoKHjjk1xY+v71jwW34z2ESKrI3FrN/85F5/0e9SGYr
 luXMzp+Tn+k2ubcrOmLFKWQk3+vf7Wpr/66J2F56iNg8kpPFU4LdqVrqeYUWTfciQrn8=;
Received: from wfout8-smtp.messagingengine.com ([64.147.123.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rm987-0000IJ-Ov for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Mar 2024 09:18:18 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.west.internal (Postfix) with ESMTP id 380841C0009B;
 Mon, 18 Mar 2024 05:18:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 18 Mar 2024 05:18:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1710753484; x=
 1710839884; bh=0RFvEZpgNJ5bK7Ro7X/Ka3XCibshAo7oB/5HUK+KVBQ=; b=W
 +VR4C0elU/mSiDZEMxJNgm8ecHs24zUwrCfoKXI6jHzCUup1ZQwHlsFExsw3PExE
 Td62LmG0S7JZWIeXnHfLH8GgGppcOwO31tSPu9B2RIC2wZJH9Gg1LDvnFoJEOyto
 oi5A7fXOFYN1lQC8hNrIxH13YGVY4Lc+3fXxs77BqfE3+Wx0lvOr4ykMQBdoOIqu
 Rs/JPLqTSz8MAwIaX+MLf8jPOfuF7nDhKF/R1oa8OHumeS635rZplq33arIc+RjC
 fYkgzYjjdf6DJttZAa+/4/J4i20DHun0qd6/NYro7RcLtvToDJAy03YdNF4d0fqQ
 balp2nQ8aFaLuAj4wqp2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1710753484; x=1710839884; bh=0RFvEZpgNJ5bK
 7Ro7X/Ka3XCibshAo7oB/5HUK+KVBQ=; b=EnLSYf1e1waplDHDfU5zLBTOlmZ84
 TPUujIVTZER0+vNoZwDUgpNpOJJ7SaUdoq0QIVamwDPwKZHtOrmLOFjtVLMCIhR2
 IUSF+vh9TOqtXpNgF93o7NjsvpswJeypir6G7K8rfUthULAnKn6cY3W4YMVDMrwW
 +jgIl8TWkqC/XWcMkzNPw8HJDpkYLWyRFoLJ4MpubEZsq61MDNNZ6+p9sGjhRgaC
 iUgzmZQojp45rnEumFjfDeJxfFgUC2gTQ11kaj5O2+2xrQmVXsolY1sXdffAO9uJ
 uiqhm0allXYsdfV73xi7SB15KGfL6SZgYqB5HJXi6FgNZolouxdXSF2fw==
X-ME-Sender: <xms:zAb4ZRT2FMZto-YUK9S7gwraxcs5kF2lmZNOub_hx0oOAK5nmnl6Ww>
 <xme:zAb4ZazaaKZ13HkDDhr3W-cnNPeOcjVT1LIrULSWXornAl8ZQhf5j8afvGD3yB2bN
 S-5aZbyjkjTWYVeSWU>
X-ME-Received: <xmr:zAb4ZW37C8Wuz1UbCH8KLkWTXmGY7nGtmLJFH0qk096x4vrpuTsXuzu1kl6k1DqEM4vlte7Kl7n7KOaSMeKYool8tAewUFAO8N90sol6VhL0dQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrkeejgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffeekte
 fgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:zAb4ZZBnXT3yxKGDkiBsE7Tw9cQI0B8fzpBCFGV4ihfMyZ8Qa0t3Ow>
 <xmx:zAb4Zag81KAxl5MWUcAYEYaPpdqcukwV1xGvRDW-3Ub1ltiu7Jjnug>
 <xmx:zAb4Zdpfo0Qv-VZxe2SiN0A5JakYTXv3AZ2eYZhku36lql3qd9_UZA>
 <xmx:zAb4ZVg9Q9230mVT2D2w7C2J-UkUKHogwE1jXQ5GULg5h0zwobIFaQ>
 <xmx:zAb4ZbsmwncwBLWmmwYyXTz6_UmHzyQiySlLbrB_sZMIZYu3wTfnrLF4300>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 18 Mar 2024 05:18:03 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH] firewire: core: add memo about the caller of show functions
 for device attributes
Date: Mon, 18 Mar 2024 18:17:58 +0900
Message-ID: <20240318091759.678326-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240318044609.GA659599@workstation.local>
References: <20240318044609.GA659599@workstation.local>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the case of firewire core function, the caller of show
 functions for device attributes is not only sysfs user,
 but also device initialization.
 This commit adds memo about it against the typical assumption that the
 functions are just dedicated to sysfs user. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rm987-0000IJ-Ov
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In the case of firewire core function, the caller of show functions for
device attributes is not only sysfs user, but also device initialization.

This commit adds memo about it against the typical assumption that the
functions are just dedicated to sysfs user.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index f208a02d0ebf..a8172a6c2caa 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -322,6 +322,7 @@ static ssize_t show_immediate(struct device *dev,
 	if (value < 0)
 		return -ENOENT;
 
+	// Note that this function is called by init_fw_attribute_group() with NULL pointer.
 	return buf ? sysfs_emit(buf, "0x%06x\n", value) : 0;
 }
 
@@ -357,6 +358,7 @@ static ssize_t show_text_leaf(struct device *dev,
 		}
 	}
 
+	// Note that this function is called by init_fw_attribute_group() with NULL pointer.
 	if (buf) {
 		bufsize = PAGE_SIZE - 1;
 	} else {
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
