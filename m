Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D816FBD353D
	for <lists+linux1394-devel@lfdr.de>; Mon, 13 Oct 2025 16:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1TweliDEuJpjAbWiK3bilNFBlOcW3eeA0LsE1rwijVQ=; b=lvSjgkcnY3cdkdCf1EaYqkdUBK
	OIEdjvGLrebgZCoHdrQOgjMS7e1q5m4RwZZ551XZc4glHqZCbfgajCn64tMuqx69r7CnBEXjB7a0m
	2FeVBhnS81rRMXe5xaEexggO9CJUrR4p+WzLmPo4F/IpdMIfR0agN13AFCBHo8jUsS3Y=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v8J98-0008RZ-Jx;
	Mon, 13 Oct 2025 14:03:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v8J96-0008RQ-EP
 for linux1394-devel@lists.sourceforge.net;
 Mon, 13 Oct 2025 14:03:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ou5rMncd5Jeoym/hVv0RnHa2lDSKYB/GpkWGveWhdBE=; b=bZi+xtYPC9ZRqIEEuFqHqNnol+
 HEFzkeAFh2qUqsxISrjMwlTjB8owUXQ9sW1KJimCd5IgL/gz76TD2wwLdsr0sl6ax+ZypYax58QB8
 MN9ApAdw9JF5AQusa/JMhaKxubmsIe08dzosLywYP7sL/JeD3SFJpSKI+iF6IP0RGa90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ou5rMncd5Jeoym/hVv0RnHa2lDSKYB/GpkWGveWhdBE=; b=JqU+W5pYDKThNVkfNKZ0tSCKR4
 PykhfHT8aEk3Yyc+9rFamTCcA3pvSlkuH8iSLdy+iFplH1b8pjlP/2KU1kGyVOhvdNDqHG3XCjHOA
 ZCLO52kgLPlhtRhYadyLLu9ej6hVXlVDCJc2YjfrDFu+hl4PVmnSjMI7fBObhWAM2JKg=;
Received: from fout-b2-smtp.messagingengine.com ([202.12.124.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8J95-0001YU-L3 for linux1394-devel@lists.sourceforge.net;
 Mon, 13 Oct 2025 14:03:28 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 0E1A01D00082;
 Mon, 13 Oct 2025 10:03:17 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Mon, 13 Oct 2025 10:03:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1760364196; x=
 1760450596; bh=Ou5rMncd5Jeoym/hVv0RnHa2lDSKYB/GpkWGveWhdBE=; b=Z
 NHFSJdr+WD2JXtuoiEYUmZ4YAKrccQJru2X5lI2zzOgku2V84IzUuuh48qPkkljL
 Qii0IVVX3rOw+KYj2V8M4tKpJNH1y7yDF6Hgm3bqBANQoeiQmszaT0vxYaPKWMMy
 KZB+dkVL4Hr1wP33uH/XQXiZduBGavMlxQWmp26eaY7Q5U9Dm8Cp/+DFUUF1AygY
 xxrsBv4t+iKB2Gqr6n0v7NK0mqSxRIz95A6zj1yAZ3IytN8tUw+7Ag4/0wrtzjFc
 Q0zp/jK8CFPfAkNoFEThotqi1umlhYWsdizoAWfPpm3ucdEe/fvjXsDyHMFEV+ka
 7PzksUEQ9Tkjx/2EuOSFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1760364196; x=1760450596; bh=O
 u5rMncd5Jeoym/hVv0RnHa2lDSKYB/GpkWGveWhdBE=; b=WSZ3Un4xhj6NxIjFn
 N4dOvBylMLuaHjOZuyCUqvWZWMh35qtmghuNp/EIRMv7vydqJg45qpvpsoJ2k1Sz
 rRNIopZmokgk+qXg7KG3gFqCWZmsbyvJU5h0m+MBEmp4VHSxA7Rojp1OQtWSCmrP
 e/yH8pbEkqa530B2KaFr6Lb7EACtOPb3xRJRf2DjdjfA4Ssaummhz3YzurB7m8f9
 Qko2JCnJ05pkOLKQ5SU1HtYI7A/YuDsVxpGQYDgVRbuuDnxr4aZIantF9eVCmUjG
 ennItNI7JTJBqPMqU6skZ/nEzbHY5SRCTwLOKUhQyIpFue68oaDVIo7qp6NtL5/S
 CCM6w==
X-ME-Sender: <xms:pAbtaOs_cw0bzbXfaMfB5diG4rv_iJk_9aTEnr1_ushGt8pI6cqGwg>
 <xme:pAbtaBai_SNOIzyhG-4WnN8HhlpG4mbZpOGfmwtrqQ9grh57yimNByBRZ6nFB7Rfj
 Ub4l04BwSST5H2p2Kuevn3G5H3chBTv4i--rc4oiNImTm1v3QanR_A>
X-ME-Received: <xmr:pAbtaBVFrJwg60HknPf2vaVf8a_AkTCjhfUDLbmxBuVIzjG0HNGNPiqw73bJjfiBuiB6zGLHu6YnQ-q_hNL65krJ7i_ZBsaiqFrIarIYB-p9Tw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduudejkeegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:pAbtaF4zXv7YtTu5Ocn3iufHGUUODEnZHDhzko9CqxpRgwbqWywddQ>
 <xmx:pAbtaMgFf6r0Z0bPqnC6M8qXjMPxvxDc5vS1mcQLaWA7q0WYK7mVJQ>
 <xmx:pAbtaMcdeS1YHSv020DSQbtXlyXt1kUDxt7azJdCH59ICtP8hxtR8g>
 <xmx:pAbtaBeARGdIXGn4f8h4agXRb0LQiE1uoPPiPAMmx-r8EqdBOn1trA>
 <xmx:pAbtaCC-h6zQkSncURYFgW-ZXUb1UZevipyLoy53IIb9VyVqZCpAaeMQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Oct 2025 10:03:15 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/2] firewire: core: detect device quirk when reading
 configuration ROM
Date: Mon, 13 Oct 2025 23:03:10 +0900
Message-ID: <20251013140311.97159-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251013140311.97159-1-o-takashi@sakamocchi.jp>
References: <20251013140311.97159-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Every time the bus manager runs, the cached configuration
 ROM content of the IRM device is investigated to detect device-specific
 quirks.
 This detection can be performed in advance when reading the co [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1v8J95-0001YU-L3
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

Every time the bus manager runs, the cached configuration ROM content of
the IRM device is investigated to detect device-specific quirks. This
detection can be performed in advance when reading the configuration ROM.

This commit adds device quirk flags to the fw_device structure, and
initializes them after reading the bus information block of the
configuration ROM. The quirk flags are immutable once the configuration
ROM has been read. Although they are likely accessed concurrently only by
the bus manager, this commit ensures safe access by preventing torn writes
and reads using the WRITE_ONCE()/READ_ONCE() macros.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c   | 21 +++++++--------------
 drivers/firewire/core-device.c | 25 +++++++++++++++++++++++--
 include/linux/firewire.h       | 11 +++++++++++
 3 files changed, 41 insertions(+), 16 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index e5e0174a0335..6979d6a88ae2 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -86,8 +86,6 @@ static size_t config_rom_length = 1 + 4 + 1 + 1;
  */
 #define DEFAULT_SPLIT_TIMEOUT	(2 * 8000)
 
-#define CANON_OUI		0x000085
-
 static void generate_config_rom(struct fw_card *card, __be32 *config_rom)
 {
 	struct fw_descriptor *desc;
@@ -308,11 +306,9 @@ __must_hold(&card->lock)
 		cpu_to_be32(local_id),
 	};
 	bool grace = time_is_before_jiffies64(card->reset_jiffies + msecs_to_jiffies(125));
-	bool irm_is_1394_1995_only = false;
-	bool keep_this_irm = false;
 	struct fw_node *irm_node;
 	struct fw_device *irm_device;
-	int irm_node_id;
+	int irm_node_id, irm_device_quirks = 0;
 	int rcode;
 
 	lockdep_assert_held(&card->lock);
@@ -328,15 +324,12 @@ __must_hold(&card->lock)
 		return BM_CONTENTION_OUTCOME_IRM_HAS_LINK_OFF;
 	}
 
+	// NOTE: It is likely that the quirk detection for IRM device has not done yet.
 	irm_device = fw_node_get_device(irm_node);
-	if (irm_device && irm_device->config_rom) {
-		irm_is_1394_1995_only = (irm_device->config_rom[2] & 0x000000f0) == 0;
-
-		// Canon MV5i works unreliably if it is not root node.
-		keep_this_irm = irm_device->config_rom[3] >> 8 == CANON_OUI;
-	}
-
-	if (irm_is_1394_1995_only && !keep_this_irm) {
+	if (irm_device)
+		irm_device_quirks = READ_ONCE(irm_device->quirks);
+	if ((irm_device_quirks & FW_DEVICE_QUIRK_IRM_IS_1394_1995_ONLY) &&
+	    !(irm_device_quirks & FW_DEVICE_QUIRK_IRM_IGNORES_BUS_MANAGER)) {
 		fw_notice(card, "IRM is not 1394a compliant, making local node (%02x) root\n",
 			  local_id);
 		return BM_CONTENTION_OUTCOME_IRM_COMPLIES_1394_1995_ONLY;
@@ -373,7 +366,7 @@ __must_hold(&card->lock)
 			return BM_CONTENTION_OUTCOME_IRM_HOLDS_LOCAL_NODE_AS_BM;
 	}
 	default:
-		if (!keep_this_irm) {
+		if (!(irm_device_quirks & FW_DEVICE_QUIRK_IRM_IGNORES_BUS_MANAGER)) {
 			fw_notice(card, "BM lock failed (%s), making local node (%02x) root\n",
 				  fw_rcode_string(rcode), local_id);
 			return BM_CONTENTION_OUTCOME_IRM_COMPLIES_1394_1995_ONLY;
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 457a0da024a7..9bab2d594b89 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -542,6 +542,21 @@ static struct device_attribute fw_device_attributes[] = {
 	__ATTR_NULL,
 };
 
+#define CANON_OUI		0x000085
+
+static int detect_quirks_by_bus_information_block(const u32 *bus_information_block)
+{
+	int quirks = 0;
+
+	if ((bus_information_block[2] & 0x000000f0) == 0)
+		quirks |= FW_DEVICE_QUIRK_IRM_IS_1394_1995_ONLY;
+
+	if ((bus_information_block[3] >> 8) == CANON_OUI)
+		quirks |= FW_DEVICE_QUIRK_IRM_IGNORES_BUS_MANAGER;
+
+	return quirks;
+}
+
 static int read_rom(struct fw_device *device,
 		    int generation, int index, u32 *data)
 {
@@ -582,6 +597,7 @@ static int read_config_rom(struct fw_device *device, int generation)
 	u32 *rom, *stack;
 	u32 sp, key;
 	int i, end, length, ret;
+	int quirks;
 
 	rom = kmalloc(sizeof(*rom) * MAX_CONFIG_ROM_SIZE +
 		      sizeof(*stack) * MAX_CONFIG_ROM_SIZE, GFP_KERNEL);
@@ -612,6 +628,11 @@ static int read_config_rom(struct fw_device *device, int generation)
 		}
 	}
 
+	quirks = detect_quirks_by_bus_information_block(rom);
+
+	// Just prevent from torn writing/reading.
+	WRITE_ONCE(device->quirks, quirks);
+
 	device->max_speed = device->node->max_speed;
 
 	/*
@@ -1122,10 +1143,10 @@ static void fw_device_init(struct work_struct *work)
 		device->workfn = fw_device_shutdown;
 		fw_schedule_device_work(device, SHUTDOWN_DELAY);
 	} else {
-		fw_notice(card, "created device %s: GUID %08x%08x, S%d00\n",
+		fw_notice(card, "created device %s: GUID %08x%08x, S%d00, quirks %08x\n",
 			  dev_name(&device->device),
 			  device->config_rom[3], device->config_rom[4],
-			  1 << device->max_speed);
+			  1 << device->max_speed, device->quirks);
 		device->config_rom_retries = 0;
 
 		set_broadcast_channel(device, device->generation);
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 6d208769d456..161829cfcc00 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -170,6 +170,14 @@ struct fw_attribute_group {
 	struct attribute *attrs[13];
 };
 
+enum fw_device_quirk {
+	// See afa1282a35d3 ("firewire: core: check for 1394a compliant IRM, fix inaccessibility of Sony camcorder").
+	FW_DEVICE_QUIRK_IRM_IS_1394_1995_ONLY = BIT(0),
+
+	// See a509e43ff338 ("firewire: core: fix unstable I/O with Canon camcorder").
+	FW_DEVICE_QUIRK_IRM_IGNORES_BUS_MANAGER = BIT(1),
+};
+
 enum fw_device_state {
 	FW_DEVICE_INITIALIZING,
 	FW_DEVICE_RUNNING,
@@ -203,6 +211,9 @@ struct fw_device {
 	struct fw_card *card;
 	struct device device;
 
+	// A set of enum fw_device_quirk.
+	int quirks;
+
 	struct mutex client_list_mutex;
 	struct list_head client_list;
 
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
