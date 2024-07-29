Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 225B993F6F6
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Jul 2024 15:47:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sYQiF-0000UZ-37;
	Mon, 29 Jul 2024 13:46:55 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sYQiD-0000UQ-F5
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Jul 2024 13:46:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j6bWCSRv+RuSR+rObc2XVVpxBOoLwKSQSviTJPiNqUw=; b=nKc3iO6mTyTQNDZMDUz+5OkRG1
 MLnQm/xLKqVxlvnzHTdIIrxrbCwjiPZIBnry6Yd7Nf5WCZxPgpF1/ZZjlLLdpmFT3JPS+mme3zY+T
 sx1k6I+TnZuLlSVaFI7v41clf9JPYivcZE8BM1ZOturvaaVZzHxqA23IZzB7Lo/DyeRY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j6bWCSRv+RuSR+rObc2XVVpxBOoLwKSQSviTJPiNqUw=; b=PUHbM+Y0nYwBpr+AcjXHcORS/T
 E/n2CASnMae07CLzneGLZRftLZNZNhgpzztEBEhN3aXOATGHdKAjZYZNIDudpjO1TmxvFwEITtghF
 m/o5cgKkIkqRgfuGOJpkesnyk2mfHbKDGBDm5ibmlIrAp1kHREQzUFvsg86jznVXrwg8=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sYQiC-0000Lk-Ho for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Jul 2024 13:46:53 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 07F24114018D;
 Mon, 29 Jul 2024 09:46:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 29 Jul 2024 09:46:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722260801; x=
 1722347201; bh=j6bWCSRv+RuSR+rObc2XVVpxBOoLwKSQSviTJPiNqUw=; b=m
 /8rkA9jZLDzEL2K0EEWBwCNxpzLlA74zT47+ZDjErKcPgHLrN45zHs8QQ5oB5/zd
 KTjlyzkReQPt1BIuFUWYvcSmfrlZ4ViFN7c5DfmrhXDYWEf/rBToqGIlsc0EaFRw
 OgYSOwoSgXL9Rcd1uZ9tSJfQxhWxfElwzoGjFWPHhlVVkOIocbG+q7064HJpiwxN
 KUsyfmfD0mt6taju7biOS+RglMpxh07cs0+NP/I/41OInCapyxZKckl5DPnNgoBe
 A4xQHIzYohHqwjs6llKsfGXKNb6PMy6nU5uniqq5UUiEVFFrIfyiBn6ja85gqJPM
 zc5exFH/yoJO9XOptaHew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722260801; x=
 1722347201; bh=j6bWCSRv+RuSR+rObc2XVVpxBOoLwKSQSviTJPiNqUw=; b=Y
 0tWsoJ+6jO0E5mjTVUOsKm8IrIO0SBhe0njhLT9CvMHCyYrRiMZ8R7pUKDDZPmuW
 6nCddeZxNi1Fa4c7of8zroREcTgIowzc8GF8r4vqbDiIMBYRuIvZ2xzaUWYLgEvx
 cPe1FUhlZnX1hPmh2LpGHwwlMFxc4RvTP3/xKrI1F3TPs514gIUhwXVc82PpxuqU
 vD/AQJVMAcFmy8VlQAVq3S/yEjZrzSUJkc3wjuolbqsR0cvlW2BUkuxI+/0huZkS
 Ve/8fREsnUctghU7OOJz3lqYSUHpT3k71pUbifzfFNjepNFE/CrKjckMJXGItQaf
 Q0o2S8zrbS7HwXgJfKN5g==
X-ME-Sender: <xms:QJ2nZjb8OrDvqfLASShup9wL-ZqcHcISTHhRgcfzxb-ZisCjMhuAAA>
 <xme:QJ2nZiYDdKUJPvfMdNQCEhJTEHHb0XWC89GbSAFWWDDDpHICqSQYuJ3VV7Pj23mn7
 KS7ioPp0_nvffNOEqE>
X-ME-Received: <xmr:QJ2nZl_ToX8hUmOGIGLK9VstK6K6ubsTnLAuyD9jj7CVKTSWagmi0f6tCvL5R452CqHZKwFsZ-csJ3z6Z_n9GgFBDH_tdDWGsnnYHBnnrzYbdAk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjedvgdeilecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:QJ2nZprFRT4t_KJAYOz9fmER7sFt2s0D3tqIuGu_-5EeNKE9N9HYFw>
 <xmx:QJ2nZupCeSXb8sCkbENTWB4ekxKqbvCG8Uuug6Lj_hkxmp8w43018w>
 <xmx:QJ2nZvRVXgNcWEh2gyjwnF6nu5YbMoR8IVk9YfasNq0DsZmhYVhwbA>
 <xmx:QJ2nZmpi8Xffndplh9_exiDJob9e5kuYQ3hvwVMZKMFmTKQlnnodig>
 <xmx:QZ2nZl0DzuNnH3mfJLhm7kSX4hiD75Lk0VvMGRncncVKTzLawk2pG_Gz>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Jul 2024 09:46:39 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/3] firewire: core: use common helper function to serialize
 phy configuration packet
Date: Mon, 29 Jul 2024 22:46:31 +0900
Message-ID: <20240729134631.127189-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240729134631.127189-1-o-takashi@sakamocchi.jp>
References: <20240729134631.127189-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: A common helper function is available to serialize the first
 quadlet of phy configuration packet. This commit is for the purpose.
 Signed-off-by:
 Takashi Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-cdev.c
 | 4 +++- drivers/firewire/core-transaction.c | 2 +- 2 files changed,
 4 insertions(+), 2 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.158 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.158 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.158 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.158 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sYQiC-0000Lk-Ho
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

A common helper function is available to serialize the first quadlet of phy
configuration packet.

This commit is for the purpose.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c        | 4 +++-
 drivers/firewire/core-transaction.c | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 9a7dc90330a3..619048dcfd72 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -37,6 +37,8 @@
 #include "core.h"
 #include <trace/events/firewire.h>
 
+#include "packet-header-definitions.h"
+
 /*
  * ABI version history is documented in linux/firewire-cdev.h.
  */
@@ -1635,7 +1637,7 @@ static int ioctl_send_phy_packet(struct client *client, union ioctl_arg *arg)
 	e->client		= client;
 	e->p.speed		= SCODE_100;
 	e->p.generation		= a->generation;
-	e->p.header[0]		= TCODE_LINK_INTERNAL << 4;
+	async_header_set_tcode(e->p.header, TCODE_LINK_INTERNAL);
 	e->p.header[1]		= a->data[0];
 	e->p.header[2]		= a->data[1];
 	e->p.header_length	= 12;
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 4d2fc1f31fec..a89c841a7dbe 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -464,7 +464,6 @@ static void transmit_phy_packet_callback(struct fw_packet *packet,
 
 static struct fw_packet phy_config_packet = {
 	.header_length	= 12,
-	.header[0]	= TCODE_LINK_INTERNAL << 4,
 	.payload_length	= 0,
 	.speed		= SCODE_100,
 	.callback	= transmit_phy_packet_callback,
@@ -497,6 +496,7 @@ void fw_send_phy_config(struct fw_card *card,
 
 	mutex_lock(&phy_config_mutex);
 
+	async_header_set_tcode(phy_config_packet.header, TCODE_LINK_INTERNAL);
 	phy_config_packet.header[1] = data;
 	phy_config_packet.header[2] = ~data;
 	phy_config_packet.generation = generation;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
