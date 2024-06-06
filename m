Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5A08FF852
	for <lists+linux1394-devel@lfdr.de>; Fri,  7 Jun 2024 01:52:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sFMtf-0004gG-DG;
	Thu, 06 Jun 2024 23:51:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sFMtd-0004g4-Fi
 for linux1394-devel@lists.sourceforge.net;
 Thu, 06 Jun 2024 23:51:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hgIseeRWLwrqaDf1AxemlHyL2UEM6IH/z/P6IZmSF1k=; b=R6GO2RHYqHA5QrN60hl+Ebe1BS
 r0KBrpWRAuW0GgESJXXyZp3ESMVhpO057W48pUpRt0M1TBxxBpN5ReEd2xOJApvj9g1/l/cFyMHMz
 3p80hlUqzeD1ak/Ft/3fBUNb3RIdsaWBmEaAj4Dvhaug+JLVlZ1bFRrD09mAkKnpLBtY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hgIseeRWLwrqaDf1AxemlHyL2UEM6IH/z/P6IZmSF1k=; b=JTRy71zUsKuzGIfywTvUb09fxI
 5w1DuE3j87w/tc0yWhHBaqvdtj2fO261yKc7T4EI7Z5R+clTx582wm0KdcxB9Lldmk/k7arv690DE
 JFXrjAB15mwSpizrzKSIKLkfcaUlZ4w+niRdORalEsY9lpWGUS3iWObTsadnSQxcJfdI=;
Received: from wfhigh4-smtp.messagingengine.com ([64.147.123.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sFMtc-00080s-LX for linux1394-devel@lists.sourceforge.net;
 Thu, 06 Jun 2024 23:51:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfhigh.west.internal (Postfix) with ESMTP id 5AE0118000BA;
 Thu,  6 Jun 2024 19:51:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 06 Jun 2024 19:51:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717717901; x=
 1717804301; bh=hgIseeRWLwrqaDf1AxemlHyL2UEM6IH/z/P6IZmSF1k=; b=f
 XI0rXUHUHazDHTPrgaB3xJ8mqp52t2aR3/wRZ4YQjLAfr1gIlPOAxxGaDqqPDr4t
 dIU6rHKnBa/b9CDVzkC/ZpZwMk4RXj7zidJvSzY45T++l5TkYTvtRVQDZtYKqiOB
 CxFIJR/AmqwfMpd1R9Ue6uWoqgmr66sZ5qrXl9XFyO/Va1T3+BrozV8PTJ4pSzQD
 lC9RG3J5mLpIwQ5gbz2ibyCUaunVlWZqHPlnNdGyxAUKr5nV4hJ8P033fYDGzWZs
 kftG/rZiCGaPm/NsjDLh1rJmi/+uZ4Wzxm9CFuLRP8w9ctGVhnlvs3CRdqiWRzJw
 tZr7YyUe8Wy80FsywWHLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717717901; x=
 1717804301; bh=hgIseeRWLwrqaDf1AxemlHyL2UEM6IH/z/P6IZmSF1k=; b=q
 wsTcpznBs+woSy2dl1UTr1YDYgDDwDCoRiDa5vmXcmQf//DhrNREzsfKCttmm4Gl
 CKNuN1oMGx1F7TvlES3fqGdZJAeOdSrTi6ZONHBRDNOwPFqO5HNtTgenyCn0WdA3
 QI2ROKm92gUH9Fq/HgWtKPJtT6isJTtS4PrcOh49WE6SF4UMHC/RSDaunb1mVGvq
 lBTNeALsuPfjRZNbo9HZsfOsPQphqrKDvDdtmQ4ojc7agRQaxpk+rKf7uEO5pZKb
 u/DvAwi9k6d+KuaAhRxgIbPtZFczfO0I4lFkjjI1NHEh2kyF2ERE8lFuR6RK915N
 u12tLR39gMyzXjUbSraTA==
X-ME-Sender: <xms:jEtiZvE7Vbk-LpBeTtlLNn6mD1E1gmwBxjZPHr3LXMG6rNI9iYPc9A>
 <xme:jEtiZsUnRwVlUT1CuzntcKfx8F5JcV5Je2GXCOi0HDQ4JnGihdtVPXYGf2V-RKR6r
 8TDpntSFxydywgluZw>
X-ME-Received: <xmr:jEtiZhJFA6T-RvHyAOdMIoVxlXn_ZAHySNGZf19gLKiC3SS5hyDMpObgX-7cILZFNJNdhvnBqRrMED9NKcUwQ3hH5KAF50SbG5NL6kX9MI5NWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdelledgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:jEtiZtEA7lJDsty-izziuzXuUJUly3LeLwSpOFxj8M8vIbmBCHUCTQ>
 <xmx:jEtiZlXjAV8C3SypwupLCZFsTRozB0EODYijePVyztKiVOgRQo20Cg>
 <xmx:jEtiZoPFTu9ojK56vcL2r0oND1TpLlNpubj9HqPqZmjiozPvJaXKWw>
 <xmx:jEtiZk1cX8tg3GtzONb1KTe-L4UA76_cEW47T0_ovet1WVPpWO1BBg>
 <xmx:jEtiZigmhM59OplMt9jrmDmzUCxLp0CSr2oKUNbv_7LTFWxI9weE04Nb>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 6 Jun 2024 19:51:39 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/2] firewire: core: add tests for
 serialization/deserialization of phy config packet
Date: Fri,  7 Jun 2024 08:51:32 +0900
Message-ID: <20240606235133.231543-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240606235133.231543-1-o-takashi@sakamocchi.jp>
References: <20240606235133.231543-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the protocol of IEEE 1394, phy configuration packet is
 broadcasted to the bus to configure all PHYs residing on the bus. It includes
 two purposes; selecting root node and optimizing gap count. This commit adds
 some helper function to serialize/deserialize the content of phy configuration
 packet, as well as some KUnit tests for it. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.155 listed in sa-trusted.bondedsender.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.155 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.155 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sFMtc-00080s-LX
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

In the protocol of IEEE 1394, phy configuration packet is broadcasted to
the bus to configure all PHYs residing on the bus. It includes two
purposes; selecting root node and optimizing gap count.

This commit adds some helper function to serialize/deserialize the
content of phy configuration packet, as well as some KUnit tests for it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/packet-serdes-test.c     | 79 +++++++++++++++++++++++
 drivers/firewire/phy-packet-definitions.h | 55 ++++++++++++++++
 2 files changed, 134 insertions(+)

diff --git a/drivers/firewire/packet-serdes-test.c b/drivers/firewire/packet-serdes-test.c
index 65cfbf1baee7..35b966eec8a5 100644
--- a/drivers/firewire/packet-serdes-test.c
+++ b/drivers/firewire/packet-serdes-test.c
@@ -248,6 +248,29 @@ static void deserialize_phy_packet_self_id_extended(u32 quadlet, unsigned int *p
 	*has_more_packets = phy_packet_self_id_get_more_packets(quadlet);
 }
 
+static void serialize_phy_packet_phy_config(u32 *quadlet, unsigned int packet_identifier,
+					    unsigned int root_id, bool has_force_root_node,
+					    bool has_gap_count_optimization, unsigned int gap_count)
+{
+	phy_packet_set_packet_identifier(quadlet, packet_identifier);
+	phy_packet_phy_config_set_root_id(quadlet, root_id);
+	phy_packet_phy_config_set_force_root_node(quadlet, has_force_root_node);
+	phy_packet_phy_config_set_gap_count_optimization(quadlet, has_gap_count_optimization);
+	phy_packet_phy_config_set_gap_count(quadlet, gap_count);
+}
+
+static void deserialize_phy_packet_phy_config(u32 quadlet, unsigned int *packet_identifier,
+					      unsigned int *root_id, bool *has_force_root_node,
+					      bool *has_gap_count_optimization,
+					      unsigned int *gap_count)
+{
+	*packet_identifier = phy_packet_get_packet_identifier(quadlet);
+	*root_id = phy_packet_phy_config_get_root_id(quadlet);
+	*has_force_root_node = phy_packet_phy_config_get_force_root_node(quadlet);
+	*has_gap_count_optimization = phy_packet_phy_config_get_gap_count_optimization(quadlet);
+	*gap_count = phy_packet_phy_config_get_gap_count(quadlet);
+}
+
 static void test_async_header_write_quadlet_request(struct kunit *test)
 {
 	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
@@ -811,6 +834,60 @@ static void test_phy_packet_self_id_zero_and_one(struct kunit *test)
 	KUNIT_EXPECT_MEMEQ(test, quadlets, expected, sizeof(expected));
 }
 
+static void test_phy_packet_phy_config_force_root_node(struct kunit *test)
+{
+	const u32 expected = 0x02800000;
+	u32 quadlet = 0;
+
+	unsigned int packet_identifier;
+	unsigned int root_id;
+	bool has_force_root_node;
+	bool has_gap_count_optimization;
+	unsigned int gap_count;
+
+	deserialize_phy_packet_phy_config(expected, &packet_identifier, &root_id,
+					  &has_force_root_node, &has_gap_count_optimization,
+					  &gap_count);
+
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_PACKET_IDENTIFIER_PHY_CONFIG, packet_identifier);
+	KUNIT_EXPECT_EQ(test, 0x02, root_id);
+	KUNIT_EXPECT_TRUE(test, has_force_root_node);
+	KUNIT_EXPECT_FALSE(test, has_gap_count_optimization);
+	KUNIT_EXPECT_EQ(test, 0, gap_count);
+
+	serialize_phy_packet_phy_config(&quadlet, packet_identifier, root_id, has_force_root_node,
+					has_gap_count_optimization, gap_count);
+
+	KUNIT_EXPECT_EQ(test, quadlet, expected);
+}
+
+static void test_phy_packet_phy_config_gap_count_optimization(struct kunit *test)
+{
+	const u32 expected = 0x034f0000;
+	u32 quadlet = 0;
+
+	unsigned int packet_identifier;
+	unsigned int root_id;
+	bool has_force_root_node;
+	bool has_gap_count_optimization;
+	unsigned int gap_count;
+
+	deserialize_phy_packet_phy_config(expected, &packet_identifier, &root_id,
+					  &has_force_root_node, &has_gap_count_optimization,
+					  &gap_count);
+
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_PACKET_IDENTIFIER_PHY_CONFIG, packet_identifier);
+	KUNIT_EXPECT_EQ(test, 0x03, root_id);
+	KUNIT_EXPECT_FALSE(test, has_force_root_node);
+	KUNIT_EXPECT_TRUE(test, has_gap_count_optimization);
+	KUNIT_EXPECT_EQ(test, 0x0f, gap_count);
+
+	serialize_phy_packet_phy_config(&quadlet, packet_identifier, root_id, has_force_root_node,
+					has_gap_count_optimization, gap_count);
+
+	KUNIT_EXPECT_EQ(test, quadlet, expected);
+}
+
 static struct kunit_case packet_serdes_test_cases[] = {
 	KUNIT_CASE(test_async_header_write_quadlet_request),
 	KUNIT_CASE(test_async_header_write_block_request),
@@ -825,6 +902,8 @@ static struct kunit_case packet_serdes_test_cases[] = {
 	KUNIT_CASE(test_phy_packet_self_id_zero_case0),
 	KUNIT_CASE(test_phy_packet_self_id_zero_case1),
 	KUNIT_CASE(test_phy_packet_self_id_zero_and_one),
+	KUNIT_CASE(test_phy_packet_phy_config_force_root_node),
+	KUNIT_CASE(test_phy_packet_phy_config_gap_count_optimization),
 	{}
 };
 
diff --git a/drivers/firewire/phy-packet-definitions.h b/drivers/firewire/phy-packet-definitions.h
index 8f78494ad371..03c7c606759f 100644
--- a/drivers/firewire/phy-packet-definitions.h
+++ b/drivers/firewire/phy-packet-definitions.h
@@ -21,6 +21,61 @@ static inline void phy_packet_set_packet_identifier(u32 *quadlet, unsigned int p
 	*quadlet |= (packet_identifier << PACKET_IDENTIFIER_SHIFT) & PACKET_IDENTIFIER_MASK;
 }
 
+#define PHY_PACKET_PACKET_IDENTIFIER_PHY_CONFIG		0
+
+#define PHY_CONFIG_ROOT_ID_MASK				0x3f000000
+#define PHY_CONFIG_ROOT_ID_SHIFT			24
+#define PHY_CONFIG_FORCE_ROOT_NODE_MASK			0x00800000
+#define PHY_CONFIG_FORCE_ROOT_NODE_SHIFT		23
+#define PHY_CONFIG_GAP_COUNT_OPTIMIZATION_MASK		0x00400000
+#define PHY_CONFIG_GAP_COUNT_OPTIMIZATION_SHIFT		22
+#define PHY_CONFIG_GAP_COUNT_MASK			0x003f0000
+#define PHY_CONFIG_GAP_COUNT_SHIFT			16
+
+static inline unsigned int phy_packet_phy_config_get_root_id(u32 quadlet)
+{
+	return (quadlet & PHY_CONFIG_ROOT_ID_MASK) >> PHY_CONFIG_ROOT_ID_SHIFT;
+}
+
+static inline void phy_packet_phy_config_set_root_id(u32 *quadlet, unsigned int root_id)
+{
+	*quadlet &= ~PHY_CONFIG_ROOT_ID_MASK;
+	*quadlet |= (root_id << PHY_CONFIG_ROOT_ID_SHIFT) & PHY_CONFIG_ROOT_ID_MASK;
+}
+
+static inline bool phy_packet_phy_config_get_force_root_node(u32 quadlet)
+{
+	return (quadlet & PHY_CONFIG_FORCE_ROOT_NODE_MASK) >> PHY_CONFIG_FORCE_ROOT_NODE_SHIFT;
+}
+
+static inline void phy_packet_phy_config_set_force_root_node(u32 *quadlet, bool has_force_root_node)
+{
+	*quadlet &= ~PHY_CONFIG_FORCE_ROOT_NODE_MASK;
+	*quadlet |= (has_force_root_node << PHY_CONFIG_FORCE_ROOT_NODE_SHIFT) & PHY_CONFIG_FORCE_ROOT_NODE_MASK;
+}
+
+static inline bool phy_packet_phy_config_get_gap_count_optimization(u32 quadlet)
+{
+	return (quadlet & PHY_CONFIG_GAP_COUNT_OPTIMIZATION_MASK) >> PHY_CONFIG_GAP_COUNT_OPTIMIZATION_SHIFT;
+}
+
+static inline void phy_packet_phy_config_set_gap_count_optimization(u32 *quadlet, bool has_gap_count_optimization)
+{
+	*quadlet &= ~PHY_CONFIG_GAP_COUNT_OPTIMIZATION_MASK;
+	*quadlet |= (has_gap_count_optimization << PHY_CONFIG_GAP_COUNT_OPTIMIZATION_SHIFT) & PHY_CONFIG_GAP_COUNT_OPTIMIZATION_MASK;
+}
+
+static inline unsigned int phy_packet_phy_config_get_gap_count(u32 quadlet)
+{
+	return (quadlet & PHY_CONFIG_GAP_COUNT_MASK) >> PHY_CONFIG_GAP_COUNT_SHIFT;
+}
+
+static inline void phy_packet_phy_config_set_gap_count(u32 *quadlet, unsigned int gap_count)
+{
+	*quadlet &= ~PHY_CONFIG_GAP_COUNT_MASK;
+	*quadlet |= (gap_count << PHY_CONFIG_GAP_COUNT_SHIFT) & PHY_CONFIG_GAP_COUNT_MASK;
+}
+
 #define PHY_PACKET_PACKET_IDENTIFIER_SELF_ID		2
 
 #define SELF_ID_PHY_ID_MASK				0x3f000000
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
