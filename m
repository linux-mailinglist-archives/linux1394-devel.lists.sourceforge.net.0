Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB28944120
	for <lists+linux1394-devel@lfdr.de>; Thu,  1 Aug 2024 04:26:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sZLWc-0004OC-4K;
	Thu, 01 Aug 2024 02:26:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sZLWZ-0004O1-Dy
 for linux1394-devel@lists.sourceforge.net;
 Thu, 01 Aug 2024 02:26:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/eeK0enPouwqRh3ub6FMhUqsaktHD2IwdZMpOOh5Krc=; b=MvRP+Io0cuLoG795BmWsv7bq41
 VbWvjkWvHX6zdAT9Ltgpzxastj7V5JCSJtzhWVGOu8aS0BXeVL9HkHV3nZf0w7hCMMcgZWYshPLq0
 0IpaxuNrStJ1+DZ7yXNGGD6utGp559lcACnK6n5VjyQhPf8eS+0GfcR6UmxKMgbzMy9o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/eeK0enPouwqRh3ub6FMhUqsaktHD2IwdZMpOOh5Krc=; b=c
 Gaj3007QUBDusrMl5vuzmScZRVzE48JpEO2FDY793rbyzRdE+9iT4BkJpgQQW/ma0I9Hig/6lqhkv
 LVWc27dpe2DsPa8j8jpdemC8nb+T/hTksRCzGMge8vBE76UnERnESJDriKlZy6c/4uLkDpMXwSYVc
 6GF9VGv79Rkd9ewk=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sZLWZ-0001qY-75 for linux1394-devel@lists.sourceforge.net;
 Thu, 01 Aug 2024 02:26:40 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 8ED091147B6A;
 Wed, 31 Jul 2024 22:26:33 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 31 Jul 2024 22:26:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1722479193; x=1722565593; bh=/eeK0enPou
 wqRh3ub6FMhUqsaktHD2IwdZMpOOh5Krc=; b=fAe3eAHLmgtLqLp6ADpXEuZyhL
 vdiM/u3/cM2QoenO0prhqioSBxLOAo5VA2BJp0pRsf1AVjb+DLyd5Vm8rAEQV3kJ
 LS4Gl1/4yiMew57o4b8Ph9XXsPIW3XLNWWU6NnJl253zbi+ClT8RdDQGVmzcB8RC
 8TyOe8STbDmSpxkrsG31RCLH0CujlFKislB06ysCbnjSP4e7PkgskoEogpDCGhq3
 yLE0sex3JEb7tVCapZZkon4AbpxJFcXFb2Dnxg49muVzmWmCEglFdKVnE35KKCjd
 p37volMIUMqNtCKWizRhE8JzKcgIWt+PywLX3C7nzg9350/LEnTtTKfOTvzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722479193; x=1722565593; bh=/eeK0enPouwqRh3ub6FMhUqsaktH
 D2IwdZMpOOh5Krc=; b=IRx12KAb4qrqaIRQIR+jnGqqcfaACEueEm9VySVDrtwv
 B3+ERRsaKb75fh4Ki7UjDLpLRLvS56tKbsxK0ng1+YMDbgvQegHObz7uDAQzgNmV
 ehEJeRwkqmjc2z04ETbJoBCFFacdmzUm7862lJ5FJIsVGqDjFlFroxN99mmeN5fI
 l3HHtCp4hPaQi68pbhYchntxc0BhBZuVqdeP9FiXWO9M4oF4Xa9LSN7PiosuL9Of
 ++hIown30U+AG8Oc/vSy1gDhSXAVMdrTEXWqv08a0q2fbmCkFy0Wx9WO3Q58fhVn
 jwkRBBhEF4HetqHipWU2DKjsK2M18OyLKgWctDIhiA==
X-ME-Sender: <xms:WfKqZkl6ZCOzuMIBh8J26jfQoOCge50u-5GyGgdlEkOisDHe9L7M5Q>
 <xme:WfKqZj3D56jfMRqgE4wTUJtObY4Ve-iqyHr_l5RIF9YovC2djNfIxEGj8xL5AMWj2
 CHukzrINvVCeXEXLgs>
X-ME-Received: <xmr:WfKqZipHs_3BOwQEFh9s0EcuEBs-jIN78GBuUogZmb9w-Iq9lHHSkCvojH4AW_3P02SgnceYS_-Dih2bzBoIlPRUBaTMKMCCC2lyj3s9OLe71AE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjeejgdeitdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevke
 duhfetjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:WfKqZgl14GKQ1CCKh6u9p4uDp2UNBxj0KDiBPJayCO58-VOVhLnWCg>
 <xmx:WfKqZi2vR7H7Nbd6uMPthwTPdNKUfYFoEtNa3LN-lmJJyMeBpL4UJA>
 <xmx:WfKqZnugSufcw1kC7yuRGQiB1O6R8EdQTkJulPy7-6UdoanvZuJ-Cw>
 <xmx:WfKqZuVn9pTyBdlg0oE7WoYB_rUaNN2gLiZDdXYac20rojqBTe6EMg>
 <xmx:WfKqZgCVVmH_zjslXUuaYwPQIYbe06esJ1RJUVSu-uB-ZkTJ-GKlWOeI>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 31 Jul 2024 22:26:32 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: utilize kref to maintain fw_node with
 reference counting
Date: Thu,  1 Aug 2024 11:26:29 +0900
Message-ID: <20240801022629.31857-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Current implementation directly uses refcount_t to maintain
 the life time of fw_node, while kref is available for the same purpose. This
 commit replaces the implementation with kref. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/core-topology.c | 2 +-
 drivers/firewire/core.h
 | 15 +++++++++++---- 2 files changed, 12 insertions(+), 5 deletions(-) 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.156 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.156 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sZLWZ-0001qY-75
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

Current implementation directly uses refcount_t to maintain the life time
of fw_node, while kref is available for the same purpose.

This commit replaces the implementation with kref.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c |  2 +-
 drivers/firewire/core.h          | 15 +++++++++++----
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index b4e637aa6932..46e6eb287d24 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -39,7 +39,7 @@ static struct fw_node *fw_node_create(u32 sid, int port_count, int color)
 	node->initiated_reset = phy_packet_self_id_zero_get_initiated_reset(sid);
 	node->port_count = port_count;
 
-	refcount_set(&node->ref_count, 1);
+	kref_init(&node->kref);
 	INIT_LIST_HEAD(&node->link);
 
 	return node;
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 7c36d2628e37..189e15e6ba82 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -183,7 +183,8 @@ struct fw_node {
 			 * local node to this node. */
 	u8 max_depth:4;	/* Maximum depth to any leaf node */
 	u8 max_hops:4;	/* Max hops in this sub tree */
-	refcount_t ref_count;
+
+	struct kref kref;
 
 	/* For serializing node topology into a list. */
 	struct list_head link;
@@ -196,15 +197,21 @@ struct fw_node {
 
 static inline struct fw_node *fw_node_get(struct fw_node *node)
 {
-	refcount_inc(&node->ref_count);
+	kref_get(&node->kref);
 
 	return node;
 }
 
+static void release_node(struct kref *kref)
+{
+	struct fw_node *node = container_of(kref, struct fw_node, kref);
+
+	kfree(node);
+}
+
 static inline void fw_node_put(struct fw_node *node)
 {
-	if (refcount_dec_and_test(&node->ref_count))
-		kfree(node);
+	kref_put(&node->kref, release_node);
 }
 
 void fw_core_handle_bus_reset(struct fw_card *card, int node_id,
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
