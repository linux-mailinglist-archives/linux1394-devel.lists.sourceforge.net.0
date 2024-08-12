Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E3A94FA6C
	for <lists+linux1394-devel@lfdr.de>; Tue, 13 Aug 2024 01:52:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sdeps-000651-Iu;
	Mon, 12 Aug 2024 23:52:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sdepq-00064s-I2
 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yTavZwoWWndaIcFeLmMMJMeYE1jdKFbFedyzqbIcn6U=; b=JlRBq3+LHxUhR1J6ZhuYxJVQrw
 jK4xKvOgaNooJE/FZVNFWcF499LYtL65PiqWDwe1uYXMKNUkMDerOp3hDog2m/u5SV2lbUGpxC0oD
 luIw+XoAoO70n1cZ2KJe2yt3mv46GVVLq2ff85HroNa6Pfe6HLItJ0gHEawtYqOgMg90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yTavZwoWWndaIcFeLmMMJMeYE1jdKFbFedyzqbIcn6U=; b=GKEobDZaSQoyWG2rfcAFlv9wUY
 c8wOFdjFO+DQc0v1vjKKz4M6JZD9vWYUnguyJNAraF1hXKn66hhk/USHXDN9oHqfH+WjwxMkPO77C
 iN3aSDmk1zopzTn2GGtKwJ8MVAR7wjv+IxczhpmFLSIq3Err7kFWuEB+uFlY4oMznBlc=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdepp-0002D5-Kg for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:22 +0000
Received: from phl-compute-07.internal (phl-compute-07.nyi.internal
 [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 14AC41151B5E;
 Mon, 12 Aug 2024 19:52:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by phl-compute-07.internal (MEProxy); Mon, 12 Aug 2024 19:52:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723506736; x=
 1723593136; bh=yTavZwoWWndaIcFeLmMMJMeYE1jdKFbFedyzqbIcn6U=; b=Y
 RpE7b6WwckgERmmOHazpf9b0b/oWlE4VaJEKD32CyfRQymLlTKit7VfZC+TM+Mi/
 OZypy4b+BsjMYCk6Gqs8q/Dh1QqbF6SRhsCbCKfs4JOnYSnJUyuRAKUUgosrQt/0
 qJAzLmqdpZvt4gPUJbHoviS4Vk+48JEgn3J/EGNH44hbVjtKTjVK2QRXE6gWt2Uq
 MEtRjjX+hLPpwM0rNzvFTqhm7/pvAm5MS1kjUarUkdukQM07LnZs6MOQeKbCQqxc
 PeUcwV03OVEomV/AiSrK+NdtDlIJzoixM1FR5DBecNEvu7ydy/p6JqxtXdJ4s7uW
 5W2GQSBKgd6a/mRt2l2hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723506736; x=
 1723593136; bh=yTavZwoWWndaIcFeLmMMJMeYE1jdKFbFedyzqbIcn6U=; b=W
 gqpdc6NMIHIyLw1ig8F0MckPo2efB+yDt+E8XybJV9cjOCue4OGQD1OkczR9GFdg
 P3Ts6tWtjQKSzHPeUhsueqGXTYGk3jaaguMsS/4pczzGoahsRrhAacu1jkdwzvFt
 G5ryCS81fCm+18hW/59VSud9Yz1uHc6Epeyefjc0cf6HkBFXd9zeJr54FcwZV8vw
 eswQDPMCAJcW5lRHDU6LlmvBtUMUGy0S/AdaqQInaNf+DcKBBX8nNk8sA+ij05dM
 BmttuPXGLOUOHWecsYhYTTYWeweHoAU60nUV7XES5ZbZ7VzFUVzesQ/FxJZLNti8
 dmCoTqGtEx0oSIhjPLlyw==
X-ME-Sender: <xms:L6C6ZhEsqJHIvEHQ0O-voZIyDqKg0Phyd4e4dYo4B-RaxoYT-SjFoQ>
 <xme:L6C6ZmUl1MFburQklkxnpKYLh5ujaHgMCTr4FWcLzAgtX1a_BVIeE_i6aOkVYLPf-
 FUJlCLoKO_AS_Ma57s>
X-ME-Received: <xmr:L6C6ZjICaScTVNjo2DjOoYMXEEHyHfCYu6ZwjEKoR0hZvdv9frp_wGYmtIgqo5eR6F8KnPnDszg3yi_XeKeSO4ThYCAAW-ap1qdKnCdIQ8bTjw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtuddgvdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:L6C6ZnFHqsZm3NMfskCZZbVIXnJm23oj9p-wusBCSCMHTIvLHqGcYw>
 <xmx:MKC6ZnW1H6lw-G66rdM8wPjOubRm9Jw_ZUdd4E3zne7vo9_E_mKrHg>
 <xmx:MKC6ZiP9Sb7ULfKvPL_4qdZvYdSLclj795UGIE-frtAeZ7wbgysz7Q>
 <xmx:MKC6Zm3Lz6cT1lOl_VhQwdw36homAVAY7vUuB46jb0_599_pj4e9Dg>
 <xmx:MKC6ZkgcfiCT2s1KsJ21ewJ12Z2kF-UmthHrtb1wpQD-UYAiYi2elv_T>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 12 Aug 2024 19:52:14 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/5] firewire: core: add helper functions to convert to parent
 resource structure
Date: Tue, 13 Aug 2024 08:52:07 +0900
Message-ID: <20240812235210.28458-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
References: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: All of local resource structure commonly have data of
 client_resource
 type in its first member. This design sometimes requires usage of container_of
 to retrieve parent structure by the first member. This commit adds some helper
 functions for this purpose. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.159 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdepp-0002D5-Kg
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

All of local resource structure commonly have data of client_resource type
in its first member. This design sometimes requires usage of
container_of to retrieve parent structure by the first member.

This commit adds some helper functions for this purpose.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 38 ++++++++++++++++++++++++------------
 1 file changed, 26 insertions(+), 12 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 81fdb2be9063..e72f91cc3711 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -139,6 +139,26 @@ struct iso_resource {
 	struct iso_resource_event *e_alloc, *e_dealloc;
 };
 
+static struct address_handler_resource *to_address_handler_resource(struct client_resource *resource)
+{
+	return container_of(resource, struct address_handler_resource, resource);
+}
+
+static struct inbound_transaction_resource *to_inbound_transaction_resource(struct client_resource *resource)
+{
+	return container_of(resource, struct inbound_transaction_resource, resource);
+}
+
+static struct descriptor_resource *to_descriptor_resource(struct client_resource *resource)
+{
+	return container_of(resource, struct descriptor_resource, resource);
+}
+
+static struct iso_resource *to_iso_resource(struct client_resource *resource)
+{
+	return container_of(resource, struct iso_resource, resource);
+}
+
 static void release_iso_resource(struct client *, struct client_resource *);
 
 static void schedule_iso_resource(struct iso_resource *r, unsigned long delay)
@@ -151,8 +171,7 @@ static void schedule_iso_resource(struct iso_resource *r, unsigned long delay)
 static void schedule_if_iso_resource(struct client_resource *resource)
 {
 	if (resource->release == release_iso_resource)
-		schedule_iso_resource(container_of(resource,
-					struct iso_resource, resource), 0);
+		schedule_iso_resource(to_iso_resource(resource), 0);
 }
 
 /*
@@ -682,8 +701,7 @@ static int ioctl_send_request(struct client *client, union ioctl_arg *arg)
 static void release_request(struct client *client,
 			    struct client_resource *resource)
 {
-	struct inbound_transaction_resource *r = container_of(resource,
-			struct inbound_transaction_resource, resource);
+	struct inbound_transaction_resource *r = to_inbound_transaction_resource(resource);
 
 	if (r->is_fcp)
 		fw_request_put(r->request);
@@ -793,8 +811,7 @@ static void handle_request(struct fw_card *card, struct fw_request *request,
 static void release_address_handler(struct client *client,
 				    struct client_resource *resource)
 {
-	struct address_handler_resource *r =
-	    container_of(resource, struct address_handler_resource, resource);
+	struct address_handler_resource *r = to_address_handler_resource(resource);
 
 	fw_core_remove_address_handler(&r->handler);
 	kfree(r);
@@ -858,8 +875,7 @@ static int ioctl_send_response(struct client *client, union ioctl_arg *arg)
 				    release_request, &resource) < 0)
 		return -EINVAL;
 
-	r = container_of(resource, struct inbound_transaction_resource,
-			 resource);
+	r = to_inbound_transaction_resource(resource);
 	if (r->is_fcp) {
 		fw_request_put(r->request);
 		goto out;
@@ -893,8 +909,7 @@ static int ioctl_initiate_bus_reset(struct client *client, union ioctl_arg *arg)
 static void release_descriptor(struct client *client,
 			       struct client_resource *resource)
 {
-	struct descriptor_resource *r =
-		container_of(resource, struct descriptor_resource, resource);
+	struct descriptor_resource *r = to_descriptor_resource(resource);
 
 	fw_core_remove_descriptor(&r->descriptor);
 	kfree(r);
@@ -1387,8 +1402,7 @@ static void iso_resource_work(struct work_struct *work)
 static void release_iso_resource(struct client *client,
 				 struct client_resource *resource)
 {
-	struct iso_resource *r =
-		container_of(resource, struct iso_resource, resource);
+	struct iso_resource *r = to_iso_resource(resource);
 
 	guard(spinlock_irq)(&client->lock);
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
