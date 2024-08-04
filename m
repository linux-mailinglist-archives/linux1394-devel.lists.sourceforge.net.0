Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 128CE946ED3
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:03:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saass-0006Tl-Tn;
	Sun, 04 Aug 2024 13:02:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saasr-0006TI-Ia
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ylV0FAWwnqnELWHfpdHvBmEJyKerlndDqM/PUzAtIHU=; b=JTWHlVjP8UF0dvonfO0BOqjq/c
 2Kpd0qL8eGmbdaJmhdcguBqun4viN8PdbRW3z1Kxm2lM2eu8pAULBkSCsDgu5JMl4/hK+1e97UbFE
 IYgbmTCCPZRRoA5gcZGrWZEpSO3Hbj9KjuBChjDEQfRW8fNA98OOBVmmgKbcdanhaJCI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ylV0FAWwnqnELWHfpdHvBmEJyKerlndDqM/PUzAtIHU=; b=NSXin/QHdK0ZwCBTYtZa0hb/6t
 B2blKUr/hwJ62sSxfZyd1+ALHxRWUrhdBKNWyF2cjWnuA94Mb5qfj8szkWsjIVKpp/Eo8VZ8YFM3a
 EeA4mGz8Ctaa4yrO9dZYy8ACZQjRNBlgCl8vSg5gvkb5gAcGzhXDh9BmHsKRk7O8YnRs=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasr-0001E7-IJ for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:50 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id 0163B138801E;
 Sun,  4 Aug 2024 09:02:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sun, 04 Aug 2024 09:02:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776558; x=
 1722862958; bh=ylV0FAWwnqnELWHfpdHvBmEJyKerlndDqM/PUzAtIHU=; b=g
 naPNysJyaGopYZ5fgjSO4g90gA8Q1rKmpj0nji9jgMnXGnts3fIwdaS4GQ0F/aZD
 wFqAxOjZ9mWZIfN58KPjXZYtyc27GpWJMhybpJO3WqBRuxmMsawXX2pLezpibeXV
 aVXr9BO7dOxeNp84XHJArMGKMSjpRj/H3UvNO7T3gkAvmF798dVDHcGBi8y6Jscs
 BGgf1+5e+iPeQEkXkwuf1rIeVQ1AdmzkUA7HVQyvdYO4wnRtKtbZqDWbcxKxfPxq
 8tZGMP7j25jD9/n2721LxGp6WHn68awCW0MjUhwT6xN3l7WeNS8KLGr1XsMSfQoU
 R7daiFsQz/tQ7zjWcNVEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776558; x=
 1722862958; bh=ylV0FAWwnqnELWHfpdHvBmEJyKerlndDqM/PUzAtIHU=; b=l
 Mw4/ZLxSlRnbV2W9QRAbxs0ef+oIcTyYz5oup64YrPLF4cajYFbgm0lxRNygjE92
 /45rBUihM9XK8HkGOjR47Y1JmucpFNs8rVnJuF2tzJJhOncW6rQuIWxhcgwwUkHT
 OMxrpF3IlsPIUEoUZKM45bNDEgVcCzTYt3hz376qNFGd4jUcAJrY3gL5q1q/bkY+
 V0zDRM6csZQASWzcyBtAvHzWsiaB6TCefACi5s8Jlrpif5GQockNT/HDZNY51bld
 BOIViJW1a78dACzS16/tkTVgwJCzYEGq34gSr8Ovl2iuQmAxXo6EvSrgsgNTQDZx
 39ZklYxmCDRqlOPmoqN5Q==
X-ME-Sender: <xms:7nuvZr3Qls3DI7D-wQgQ0mX4y3zXe5L7K9VbqhGV6RjOGHD_jUxR5g>
 <xme:7nuvZqHK8qQGWYTBtc67PwpImFPk496wiv42TDncmdRobQG15LCu6ZAso1WtkSR-B
 ev7OVvU6q8EMgq9DZo>
X-ME-Received: <xmr:7nuvZr5EOb9w7kShflXu0cxOf0UA0AVnJjszr-1a-OUilvRxvJLltfO4beXMeBWsGUDrsoGaz8lTXJmPdoCUb_gRabpA1BWjQN8jjDf9FHeoNw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:7nuvZg1lMEcLrhRY-yNvicWERs5Piw0ZMDtVUNv5iw4RQm8JYhcE6w>
 <xmx:7nuvZuF4pHTKDDVR7UbuI0rBAOUxENMxVY9KZ_3nNCbkNTd-_nXbRg>
 <xmx:7nuvZh869HxUzrV-EljkP0qUMK_4J7AhGZVQlrUk31l7UIbFYBoLuA>
 <xmx:7nuvZrkqZolV037ldm50LsfH3vJ6C_eSFbS3s-D9z7yok-UeWiE_ww>
 <xmx:7nuvZjRhlyQjE0YW3vzc7NohxUVn8270ZEgCCOCfdFoC-SOJdIyC957k>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:37 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 07/17] firewire: core: use guard macro to maintain the list of
 address handler for transaction
Date: Sun,  4 Aug 2024 22:02:14 +0900
Message-ID: <20240804130225.243496-8-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function maintains address handlers by list. It is
 protected by spinlock to insert and remove entry to the list. This commit
 uses guard macro to maintain the spinlock. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/core-transaction.c | 10
 ++++------ 1 file changed, 4 insertions(+), 6 deletions(-) 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.146 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1saasr-0001E7-IJ
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

The core function maintains address handlers by list. It is protected by
spinlock to insert and remove entry to the list.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a0224d4d8e11..a006daf385e9 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -596,7 +596,7 @@ int fw_core_add_address_handler(struct fw_address_handler *handler,
 	    handler->length == 0)
 		return -EINVAL;
 
-	spin_lock(&address_handler_list_lock);
+	guard(spinlock)(&address_handler_list_lock);
 
 	handler->offset = region->start;
 	while (handler->offset + handler->length <= region->end) {
@@ -615,8 +615,6 @@ int fw_core_add_address_handler(struct fw_address_handler *handler,
 		}
 	}
 
-	spin_unlock(&address_handler_list_lock);
-
 	return ret;
 }
 EXPORT_SYMBOL(fw_core_add_address_handler);
@@ -632,9 +630,9 @@ EXPORT_SYMBOL(fw_core_add_address_handler);
  */
 void fw_core_remove_address_handler(struct fw_address_handler *handler)
 {
-	spin_lock(&address_handler_list_lock);
-	list_del_rcu(&handler->link);
-	spin_unlock(&address_handler_list_lock);
+	scoped_guard(spinlock, &address_handler_list_lock)
+		list_del_rcu(&handler->link);
+
 	synchronize_rcu();
 }
 EXPORT_SYMBOL(fw_core_remove_address_handler);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
