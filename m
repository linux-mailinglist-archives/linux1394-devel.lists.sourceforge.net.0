Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A97078FDAE3
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qb-0006dy-4F;
	Wed, 05 Jun 2024 23:52:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0Qa-0006dk-4R
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vHlq0ZKzEwlpJxFJg/r2e4RZVzz0LGqjE3vNcaSDf6M=; b=P5z8LdHaQVRdMSCSkuDwTk9yvU
 0/RFTQUYJHgaoRP+hSo80/Z/lLI5Fn5BVQ8YATdCDSyW7T6cZHUMABXdVOSDVdr3G0LJQBhbQM9Xv
 CWC59SvaVTFVz0LKxPB0MZ/YI5OOnO/9pd+6AhGdtgF52TwTLDSefB50qZXmbWQr36a4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vHlq0ZKzEwlpJxFJg/r2e4RZVzz0LGqjE3vNcaSDf6M=; b=ejO/vCNcwvLur4qs4Fo0t/wVlB
 lxGzxyJVESuYXwEp4L2gjox1G6pqfUwrH+xWkxj+3Vb3+n0zu+H6H9DtpMyFovrAMnO2jBt9oKS85
 msLCaz70EcB2R7BDfLxjtLHBDfXEhcp8zqjl9J8/YtkhyXKHKy56HvEwazIWLpjZLvU4=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0QX-0004Yb-QF for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:22 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.west.internal (Postfix) with ESMTP id 7E6F61C000A2;
 Wed,  5 Jun 2024 19:52:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 05 Jun 2024 19:52:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717631535; x=
 1717717935; bh=vHlq0ZKzEwlpJxFJg/r2e4RZVzz0LGqjE3vNcaSDf6M=; b=R
 7M5gYwqjghTO2SeAknk+HjnMK3FvZ/UqBGEALdYLdGJwxVpCHDhCP0KTAo668244
 HBt4XdLRtb/vZ02F37TYel0xrzzBXLLLcoSQPoSv2Ipe4EYnBL+4CGPKTNFgJ22g
 sB6Ekyk0PAXj5jiNAiSZuMSXk+tpss7tQENC6q8IjWXte8iAH2ei89FQ3Uv5TsEM
 shlcL06P79TfMvaTvshGGzbL87x3/59BLR0Va6vYCuyDs8kKbQyisWItPxxLEt0P
 YyXApzfLyJ4vsQPbMMKkHPoIglmAfGpiAQGS6aXHcoR4D5eVKENCC0BOn7TyeO5z
 jIlscl83gHYFEmhfesYzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717631535; x=
 1717717935; bh=vHlq0ZKzEwlpJxFJg/r2e4RZVzz0LGqjE3vNcaSDf6M=; b=b
 SxvLFpGHZOfnrDrwnLcjexBQsHHkOhInBLKG1ghAa2D2ZriPeODKE2zawm8dURMy
 JbhWoicUNMRtyObK3q7evyIdIk6J4hYajo+cAeG3lQq/YEjzYuttnywksk+3AoOn
 nJe7pqKBVwCSLnj8RpP/n2DFPftH8sFHLQ9ikVfUI3HlXhki4Z3KNttSKYZ7ZhEq
 9r823wm2G1k/t1vjnq7YmHblpXiaNimUN5iEY5FUBNOifGBhiwt4N4frMKrn9ZHo
 GCZTdw4nZZEr0drnio18K/JFskTsQmygKlE6EhJRxypICEkPmuynAu8IZmNeL9sx
 hmLwchuw0vOTOrRxIKFQQ==
X-ME-Sender: <xms:LvpgZiyhHJbX2c0TFti40hM8eRX3CynECO3PfTmzT8oGZIG91HR-Sg>
 <xme:LvpgZuRDhKeh0AhBjzIrXIGe48rF_8Xoz6f0WziidPBfsnN_C7ZzYxpGrkQcgiRho
 L_viWzpBCY9LItVDUQ>
X-ME-Received: <xmr:LvpgZkUY4G0g9zBzgyOogUpg3Km3Kom0P7aAe7t-JEsVy9u3PdjEx07IFikAGJLOpOBTdix-01SLn2ou-LfpgPssbugMyBQqnCb1aKZvHcOjxQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:LvpgZoi_t5hPSGRweuHwlthrScAIR3ROkWDsa6-jIBRvvlXa1TVmuA>
 <xmx:L_pgZkCB9NktWuifyr-FQzQZnpk_hgJvnpiwRhbSrXuxk2zTEU6_sg>
 <xmx:L_pgZpIkIaEOlTaAYc8fS-hPq5ECb8QF5K7JrCQy-6AlZA7xhjV0zw>
 <xmx:L_pgZrBPLSf0ibUCXjA_jLMflFV0Vb-Q4oPCY7iBn7iPVzikEjLzfQ>
 <xmx:L_pgZnN21h9RlZfQpHpTjPONT6jQWvRDESRzMKY45HzHzgPxF7ycoUuS>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:52:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 07/11] firewire: core: add common inline functions to
 serialize/deserialize self ID packet
Date: Thu,  6 Jun 2024 08:51:51 +0900
Message-ID: <20240605235155.116468-8-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
References: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Within FireWire subsystem,
 the serializations and deserializations
 of phy packet are implemented in several parts. They includes some
 redundancies.
 This commit adds a series of helper functions for the serializations and
 deserializations of self ID packet with a Kunit test suite. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sF0QX-0004Yb-QF
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

Within FireWire subsystem, the serializations and deserializations of phy
packet are implemented in several parts. They includes some redundancies.

This commit adds a series of helper functions for the serializations and
deserializations of self ID packet with a Kunit test suite.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/packet-serdes-test.c     | 255 ++++++++++++++++++++++
 drivers/firewire/phy-packet-definitions.h | 126 +++++++++++
 2 files changed, 381 insertions(+)

diff --git a/drivers/firewire/packet-serdes-test.c b/drivers/firewire/packet-serdes-test.c
index e83b1fece780..c56199e84f91 100644
--- a/drivers/firewire/packet-serdes-test.c
+++ b/drivers/firewire/packet-serdes-test.c
@@ -10,6 +10,7 @@
 #include <linux/firewire-constants.h>
 
 #include "packet-header-definitions.h"
+#include "phy-packet-definitions.h"
 
 static void serialize_async_header_common(u32 header[ASYNC_HEADER_QUADLET_COUNT],
 					  unsigned int dst_id, unsigned int tlabel,
@@ -187,6 +188,66 @@ static void deserialize_isoc_header(u32 header, unsigned int *data_length, unsig
 	*sy = isoc_header_get_sy(header);
 }
 
+static void serialize_phy_packet_self_id_zero(u32 *quadlet, unsigned int packet_identifier,
+					      unsigned int phy_id, bool extended,
+					      bool link_is_active, unsigned int gap_count,
+					      unsigned int scode, bool is_contender,
+					      unsigned int power_class, bool is_initiated_reset,
+					      bool has_more_packets)
+{
+	phy_packet_set_packet_identifier(quadlet, packet_identifier);
+	phy_packet_self_id_set_phy_id(quadlet, phy_id);
+	phy_packet_self_id_set_extended(quadlet, extended);
+	phy_packet_self_id_zero_set_link_active(quadlet, link_is_active);
+	phy_packet_self_id_zero_set_gap_count(quadlet, gap_count);
+	phy_packet_self_id_zero_set_scode(quadlet, scode);
+	phy_packet_self_id_zero_set_contender(quadlet, is_contender);
+	phy_packet_self_id_zero_set_power_class(quadlet, power_class);
+	phy_packet_self_id_zero_set_initiated_reset(quadlet, is_initiated_reset);
+	phy_packet_self_id_set_more_packets(quadlet, has_more_packets);
+}
+
+static void deserialize_phy_packet_self_id_zero(u32 quadlet, unsigned int *packet_identifier,
+						unsigned int *phy_id, bool *extended,
+						bool *link_is_active, unsigned int *gap_count,
+						unsigned int *scode, bool *is_contender,
+						unsigned int *power_class,
+						bool *is_initiated_reset, bool *has_more_packets)
+{
+	*packet_identifier = phy_packet_get_packet_identifier(quadlet);
+	*phy_id = phy_packet_self_id_get_phy_id(quadlet);
+	*extended = phy_packet_self_id_get_extended(quadlet);
+	*link_is_active = phy_packet_self_id_zero_get_link_active(quadlet);
+	*gap_count = phy_packet_self_id_zero_get_gap_count(quadlet);
+	*scode = phy_packet_self_id_zero_get_scode(quadlet);
+	*is_contender = phy_packet_self_id_zero_get_contender(quadlet);
+	*power_class = phy_packet_self_id_zero_get_power_class(quadlet);
+	*is_initiated_reset = phy_packet_self_id_zero_get_initiated_reset(quadlet);
+	*has_more_packets = phy_packet_self_id_get_more_packets(quadlet);
+}
+
+static void serialize_phy_packet_self_id_extended(u32 *quadlet, unsigned int packet_identifier,
+						  unsigned int phy_id, bool extended,
+						  unsigned int sequence, bool has_more_packets)
+{
+	phy_packet_set_packet_identifier(quadlet, packet_identifier);
+	phy_packet_self_id_set_phy_id(quadlet, phy_id);
+	phy_packet_self_id_set_extended(quadlet, extended);
+	phy_packet_self_id_extended_set_sequence(quadlet, sequence);
+	phy_packet_self_id_set_more_packets(quadlet, has_more_packets);
+}
+
+static void deserialize_phy_packet_self_id_extended(u32 quadlet, unsigned int *packet_identifier,
+						    unsigned int *phy_id, bool *extended,
+						    unsigned int *sequence, bool *has_more_packets)
+{
+	*packet_identifier = phy_packet_get_packet_identifier(quadlet);
+	*phy_id = phy_packet_self_id_get_phy_id(quadlet);
+	*extended = phy_packet_self_id_get_extended(quadlet);
+	*sequence = phy_packet_self_id_extended_get_sequence(quadlet);
+	*has_more_packets = phy_packet_self_id_get_more_packets(quadlet);
+}
+
 static void test_async_header_write_quadlet_request(struct kunit *test)
 {
 	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
@@ -559,6 +620,197 @@ static void test_isoc_header(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, header, expected);
 }
 
+static void test_phy_packet_self_id_zero_case0(struct kunit *test)
+{
+	// TSB41AB1/2 with 1 port.
+	const u32 expected[] = {0x80458c80};
+	u32 quadlets[] = {0};
+
+	unsigned int packet_identifier;
+	unsigned int phy_id;
+	bool extended;
+	bool link_is_active;
+	unsigned int gap_count;
+	unsigned int scode;
+	bool is_contender;
+	unsigned int power_class;
+	enum phy_packet_self_id_port_status port_status[3];
+	bool is_initiated_reset;
+	bool has_more_packets;
+	unsigned int port_index;
+
+	deserialize_phy_packet_self_id_zero(expected[0], &packet_identifier, &phy_id, &extended,
+					    &link_is_active, &gap_count, &scode, &is_contender,
+					    &power_class, &is_initiated_reset, &has_more_packets);
+
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_PACKET_IDENTIFIER_SELF_ID, packet_identifier);
+	KUNIT_EXPECT_EQ(test, 0, phy_id);
+	KUNIT_EXPECT_FALSE(test, extended);
+	KUNIT_EXPECT_TRUE(test, link_is_active);
+	KUNIT_EXPECT_EQ(test, 0x05, gap_count);
+	KUNIT_EXPECT_EQ(test, SCODE_400, scode);
+	KUNIT_EXPECT_TRUE(test, is_contender);
+	KUNIT_EXPECT_EQ(test, 0x4, power_class);
+	KUNIT_EXPECT_FALSE(test, is_initiated_reset);
+	KUNIT_EXPECT_FALSE(test, has_more_packets);
+
+	serialize_phy_packet_self_id_zero(quadlets, packet_identifier, phy_id, extended,
+					  link_is_active, gap_count, scode, is_contender,
+					  power_class, is_initiated_reset, has_more_packets);
+
+	for (port_index = 0; port_index < ARRAY_SIZE(port_status); ++port_index) {
+		port_status[port_index] =
+			self_id_sequence_get_port_status(expected, ARRAY_SIZE(expected), port_index);
+	}
+
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[0]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NONE, port_status[1]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NONE, port_status[2]);
+
+	for (port_index = 0; port_index < ARRAY_SIZE(port_status); ++port_index) {
+		self_id_sequence_set_port_status(quadlets, ARRAY_SIZE(quadlets), port_index,
+						 port_status[port_index]);
+	}
+
+	KUNIT_EXPECT_MEMEQ(test, quadlets, expected, sizeof(expected));
+}
+
+static void test_phy_packet_self_id_zero_case1(struct kunit *test)
+{
+	// XIO2213 and TSB81BA3E with 3 ports.
+	const u32 expected[] = {0x817fcc5e};
+	u32 quadlets[] = {0};
+
+	unsigned int packet_identifier;
+	unsigned int phy_id;
+	bool extended;
+	bool link_is_active;
+	unsigned int gap_count;
+	unsigned int scode;
+	bool is_contender;
+	unsigned int power_class;
+	enum phy_packet_self_id_port_status port_status[3];
+	bool is_initiated_reset;
+	bool has_more_packets;
+	unsigned int port_index;
+
+	deserialize_phy_packet_self_id_zero(expected[0], &packet_identifier, &phy_id, &extended,
+					    &link_is_active, &gap_count, &scode, &is_contender,
+					    &power_class, &is_initiated_reset, &has_more_packets);
+
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_PACKET_IDENTIFIER_SELF_ID, packet_identifier);
+	KUNIT_EXPECT_EQ(test, 1, phy_id);
+	KUNIT_EXPECT_FALSE(test, extended);
+	KUNIT_EXPECT_TRUE(test, link_is_active);
+	KUNIT_EXPECT_EQ(test, 0x3f, gap_count);
+	KUNIT_EXPECT_EQ(test, SCODE_800, scode);
+	KUNIT_EXPECT_TRUE(test, is_contender);
+	KUNIT_EXPECT_EQ(test, 0x4, power_class);
+	KUNIT_EXPECT_TRUE(test, is_initiated_reset);
+	KUNIT_EXPECT_FALSE(test, has_more_packets);
+
+	serialize_phy_packet_self_id_zero(quadlets, packet_identifier, phy_id, extended,
+					  link_is_active, gap_count, scode, is_contender,
+					  power_class, is_initiated_reset, has_more_packets);
+
+	for (port_index = 0; port_index < ARRAY_SIZE(port_status); ++port_index) {
+		port_status[port_index] =
+			self_id_sequence_get_port_status(expected, ARRAY_SIZE(expected), port_index);
+	}
+
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[0]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[1]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_CHILD, port_status[2]);
+
+	for (port_index = 0; port_index < ARRAY_SIZE(port_status); ++port_index) {
+		self_id_sequence_set_port_status(quadlets, ARRAY_SIZE(quadlets), port_index,
+						 port_status[port_index]);
+	}
+
+	KUNIT_EXPECT_MEMEQ(test, quadlets, expected, sizeof(expected));
+}
+
+static void test_phy_packet_self_id_zero_and_one(struct kunit *test)
+{
+	// TSB41LV06A with 6 ports.
+	const u32 expected[] = {
+		0x803f8459,
+		0x80815000,
+	};
+	u32 quadlets[] = {0, 0};
+
+	unsigned int packet_identifier;
+	unsigned int phy_id;
+	bool extended;
+	bool link_is_active;
+	unsigned int gap_count;
+	unsigned int scode;
+	bool is_contender;
+	unsigned int power_class;
+	enum phy_packet_self_id_port_status port_status[11];
+	bool is_initiated_reset;
+	bool has_more_packets;
+
+	unsigned int sequence;
+	unsigned int port_index;
+
+	deserialize_phy_packet_self_id_zero(expected[0], &packet_identifier, &phy_id, &extended,
+					    &link_is_active, &gap_count, &scode, &is_contender,
+					    &power_class, &is_initiated_reset, &has_more_packets);
+
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_PACKET_IDENTIFIER_SELF_ID, packet_identifier);
+	KUNIT_EXPECT_EQ(test, 0, phy_id);
+	KUNIT_EXPECT_FALSE(test, extended);
+	KUNIT_EXPECT_FALSE(test, link_is_active);
+	KUNIT_EXPECT_EQ(test, 0x3f, gap_count);
+	KUNIT_EXPECT_EQ(test, SCODE_400, scode);
+	KUNIT_EXPECT_FALSE(test, is_contender);
+	KUNIT_EXPECT_EQ(test, 0x4, power_class);
+	KUNIT_EXPECT_FALSE(test, is_initiated_reset);
+	KUNIT_EXPECT_TRUE(test, has_more_packets);
+
+	serialize_phy_packet_self_id_zero(quadlets, packet_identifier, phy_id, extended,
+					  link_is_active, gap_count, scode, is_contender,
+					  power_class, is_initiated_reset, has_more_packets);
+
+	deserialize_phy_packet_self_id_extended(expected[1], &packet_identifier, &phy_id, &extended,
+						&sequence, &has_more_packets);
+
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_PACKET_IDENTIFIER_SELF_ID, packet_identifier);
+	KUNIT_EXPECT_EQ(test, 0, phy_id);
+	KUNIT_EXPECT_TRUE(test, extended);
+	KUNIT_EXPECT_EQ(test, 0, sequence);
+	KUNIT_EXPECT_FALSE(test, has_more_packets);
+
+	serialize_phy_packet_self_id_extended(&quadlets[1], packet_identifier, phy_id, extended,
+					      sequence, has_more_packets);
+
+
+	for (port_index = 0; port_index < ARRAY_SIZE(port_status); ++port_index) {
+		port_status[port_index] =
+			self_id_sequence_get_port_status(expected, ARRAY_SIZE(expected), port_index);
+	}
+
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[0]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[1]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[2]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[3]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[4]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[5]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NONE, port_status[6]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NONE, port_status[7]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NONE, port_status[8]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NONE, port_status[9]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NONE, port_status[10]);
+
+	for (port_index = 0; port_index < ARRAY_SIZE(port_status); ++port_index) {
+		self_id_sequence_set_port_status(quadlets, ARRAY_SIZE(quadlets), port_index,
+						 port_status[port_index]);
+	}
+
+	KUNIT_EXPECT_MEMEQ(test, quadlets, expected, sizeof(expected));
+}
+
 static struct kunit_case packet_serdes_test_cases[] = {
 	KUNIT_CASE(test_async_header_write_quadlet_request),
 	KUNIT_CASE(test_async_header_write_block_request),
@@ -570,6 +822,9 @@ static struct kunit_case packet_serdes_test_cases[] = {
 	KUNIT_CASE(test_async_header_lock_request),
 	KUNIT_CASE(test_async_header_lock_response),
 	KUNIT_CASE(test_isoc_header),
+	KUNIT_CASE(test_phy_packet_self_id_zero_case0),
+	KUNIT_CASE(test_phy_packet_self_id_zero_case1),
+	KUNIT_CASE(test_phy_packet_self_id_zero_and_one),
 	{}
 };
 
diff --git a/drivers/firewire/phy-packet-definitions.h b/drivers/firewire/phy-packet-definitions.h
index 4ba8b18aa993..8f78494ad371 100644
--- a/drivers/firewire/phy-packet-definitions.h
+++ b/drivers/firewire/phy-packet-definitions.h
@@ -7,11 +7,42 @@
 #ifndef _FIREWIRE_PHY_PACKET_DEFINITIONS_H
 #define _FIREWIRE_PHY_PACKET_DEFINITIONS_H
 
+#define PACKET_IDENTIFIER_MASK				0xc0000000
+#define PACKET_IDENTIFIER_SHIFT				30
+
+static inline unsigned int phy_packet_get_packet_identifier(u32 quadlet)
+{
+	return (quadlet & PACKET_IDENTIFIER_MASK) >> PACKET_IDENTIFIER_SHIFT;
+}
+
+static inline void phy_packet_set_packet_identifier(u32 *quadlet, unsigned int packet_identifier)
+{
+	*quadlet &= ~PACKET_IDENTIFIER_MASK;
+	*quadlet |= (packet_identifier << PACKET_IDENTIFIER_SHIFT) & PACKET_IDENTIFIER_MASK;
+}
+
+#define PHY_PACKET_PACKET_IDENTIFIER_SELF_ID		2
+
+#define SELF_ID_PHY_ID_MASK				0x3f000000
+#define SELF_ID_PHY_ID_SHIFT				24
 #define SELF_ID_EXTENDED_MASK				0x00800000
 #define SELF_ID_EXTENDED_SHIFT				23
 #define SELF_ID_MORE_PACKETS_MASK			0x00000001
 #define SELF_ID_MORE_PACKETS_SHIFT			0
 
+#define SELF_ID_ZERO_LINK_ACTIVE_MASK			0x00400000
+#define SELF_ID_ZERO_LINK_ACTIVE_SHIFT			22
+#define SELF_ID_ZERO_GAP_COUNT_MASK			0x003f0000
+#define SELF_ID_ZERO_GAP_COUNT_SHIFT			16
+#define SELF_ID_ZERO_SCODE_MASK				0x0000c000
+#define SELF_ID_ZERO_SCODE_SHIFT			14
+#define SELF_ID_ZERO_CONTENDER_MASK			0x00000800
+#define SELF_ID_ZERO_CONTENDER_SHIFT			11
+#define SELF_ID_ZERO_POWER_CLASS_MASK			0x00000700
+#define SELF_ID_ZERO_POWER_CLASS_SHIFT			8
+#define SELF_ID_ZERO_INITIATED_RESET_MASK		0x00000002
+#define SELF_ID_ZERO_INITIATED_RESET_SHIFT		1
+
 #define SELF_ID_EXTENDED_SEQUENCE_MASK			0x00700000
 #define SELF_ID_EXTENDED_SEQUENCE_SHIFT			20
 
@@ -19,21 +50,116 @@
 
 #define SELF_ID_SEQUENCE_MAXIMUM_QUADLET_COUNT		4
 
+static inline unsigned int phy_packet_self_id_get_phy_id(u32 quadlet)
+{
+	return (quadlet & SELF_ID_PHY_ID_MASK)  >> SELF_ID_PHY_ID_SHIFT;
+}
+
+static inline void phy_packet_self_id_set_phy_id(u32 *quadlet, unsigned int phy_id)
+{
+	*quadlet &= ~SELF_ID_PHY_ID_MASK;
+	*quadlet |= (phy_id << SELF_ID_PHY_ID_SHIFT) & SELF_ID_PHY_ID_MASK;
+}
+
 static inline bool phy_packet_self_id_get_extended(u32 quadlet)
 {
 	return (quadlet & SELF_ID_EXTENDED_MASK) >> SELF_ID_EXTENDED_SHIFT;
 }
 
+static inline void phy_packet_self_id_set_extended(u32 *quadlet, bool extended)
+{
+	*quadlet &= ~SELF_ID_EXTENDED_MASK;
+	*quadlet |= (extended << SELF_ID_EXTENDED_SHIFT) & SELF_ID_EXTENDED_MASK;
+}
+
+static inline bool phy_packet_self_id_zero_get_link_active(u32 quadlet)
+{
+	return (quadlet & SELF_ID_ZERO_LINK_ACTIVE_MASK) >> SELF_ID_ZERO_LINK_ACTIVE_SHIFT;
+}
+
+static inline void phy_packet_self_id_zero_set_link_active(u32 *quadlet, bool is_active)
+{
+	*quadlet &= ~SELF_ID_ZERO_LINK_ACTIVE_MASK;
+	*quadlet |= (is_active << SELF_ID_ZERO_LINK_ACTIVE_SHIFT) & SELF_ID_ZERO_LINK_ACTIVE_MASK;
+}
+
+static inline unsigned int phy_packet_self_id_zero_get_gap_count(u32 quadlet)
+{
+	return (quadlet & SELF_ID_ZERO_GAP_COUNT_MASK) >> SELF_ID_ZERO_GAP_COUNT_SHIFT;
+}
+
+static inline void phy_packet_self_id_zero_set_gap_count(u32 *quadlet, unsigned int gap_count)
+{
+	*quadlet &= ~SELF_ID_ZERO_GAP_COUNT_MASK;
+	*quadlet |= (gap_count << SELF_ID_ZERO_GAP_COUNT_SHIFT) & SELF_ID_ZERO_GAP_COUNT_MASK;
+}
+
+static inline unsigned int phy_packet_self_id_zero_get_scode(u32 quadlet)
+{
+	return (quadlet & SELF_ID_ZERO_SCODE_MASK) >> SELF_ID_ZERO_SCODE_SHIFT;
+}
+
+static inline void phy_packet_self_id_zero_set_scode(u32 *quadlet, unsigned int speed)
+{
+	*quadlet &= ~SELF_ID_ZERO_SCODE_MASK;
+	*quadlet |= (speed << SELF_ID_ZERO_SCODE_SHIFT) & SELF_ID_ZERO_SCODE_MASK;
+}
+
+static inline bool phy_packet_self_id_zero_get_contender(u32 quadlet)
+{
+	return (quadlet & SELF_ID_ZERO_CONTENDER_MASK) >> SELF_ID_ZERO_CONTENDER_SHIFT;
+}
+
+static inline void phy_packet_self_id_zero_set_contender(u32 *quadlet, bool is_contender)
+{
+	*quadlet &= ~SELF_ID_ZERO_CONTENDER_MASK;
+	*quadlet |= (is_contender << SELF_ID_ZERO_CONTENDER_SHIFT) & SELF_ID_ZERO_CONTENDER_MASK;
+}
+
+static inline unsigned int phy_packet_self_id_zero_get_power_class(u32 quadlet)
+{
+	return (quadlet & SELF_ID_ZERO_POWER_CLASS_MASK) >> SELF_ID_ZERO_POWER_CLASS_SHIFT;
+}
+
+static inline void phy_packet_self_id_zero_set_power_class(u32 *quadlet, unsigned int power_class)
+{
+	*quadlet &= ~SELF_ID_ZERO_POWER_CLASS_MASK;
+	*quadlet |= (power_class << SELF_ID_ZERO_POWER_CLASS_SHIFT) & SELF_ID_ZERO_POWER_CLASS_MASK;
+}
+
+static inline bool phy_packet_self_id_zero_get_initiated_reset(u32 quadlet)
+{
+	return (quadlet & SELF_ID_ZERO_INITIATED_RESET_MASK) >> SELF_ID_ZERO_INITIATED_RESET_SHIFT;
+}
+
+static inline void phy_packet_self_id_zero_set_initiated_reset(u32 *quadlet, bool is_initiated_reset)
+{
+	*quadlet &= ~SELF_ID_ZERO_INITIATED_RESET_MASK;
+	*quadlet |= (is_initiated_reset << SELF_ID_ZERO_INITIATED_RESET_SHIFT) & SELF_ID_ZERO_INITIATED_RESET_MASK;
+}
+
 static inline bool phy_packet_self_id_get_more_packets(u32 quadlet)
 {
 	return (quadlet & SELF_ID_MORE_PACKETS_MASK) >> SELF_ID_MORE_PACKETS_SHIFT;
 }
 
+static inline void phy_packet_self_id_set_more_packets(u32 *quadlet, bool is_more_packets)
+{
+	*quadlet &= ~SELF_ID_MORE_PACKETS_MASK;
+	*quadlet |= (is_more_packets << SELF_ID_MORE_PACKETS_SHIFT) & SELF_ID_MORE_PACKETS_MASK;
+}
+
 static inline unsigned int phy_packet_self_id_extended_get_sequence(u32 quadlet)
 {
 	return (quadlet & SELF_ID_EXTENDED_SEQUENCE_MASK) >> SELF_ID_EXTENDED_SEQUENCE_SHIFT;
 }
 
+static inline void phy_packet_self_id_extended_set_sequence(u32 *quadlet, unsigned int sequence)
+{
+	*quadlet &= ~SELF_ID_EXTENDED_SEQUENCE_MASK;
+	*quadlet |= (sequence << SELF_ID_EXTENDED_SHIFT) & SELF_ID_EXTENDED_SEQUENCE_MASK;
+}
+
 struct self_id_sequence_enumerator {
 	const u32 *cursor;
 	unsigned int quadlet_count;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
