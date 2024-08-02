Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA7694557C
	for <lists+linux1394-devel@lfdr.de>; Fri,  2 Aug 2024 02:36:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sZgHR-0002gu-JW;
	Fri, 02 Aug 2024 00:36:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sZgHP-0002gk-KP
 for linux1394-devel@lists.sourceforge.net;
 Fri, 02 Aug 2024 00:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TtGB+6eUSoiVjMb0D0R6qxEVYCRPOb64uGK15dQNuUw=; b=mWNa8gFgQSAsEfFEgB13Tpw3+m
 nx5w3iqVyw8HzLTK0B4RT0msaeftuYHEx6sba/XeIhC9WyFA59f4AidKA3wOpL/GGfcjRP++TXLKM
 nniTr9qtzrAfdMUOimRgowQyjNOk03vzN7RBk+bn8AvuiZLoNgjv218ctQvbdAANfmBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TtGB+6eUSoiVjMb0D0R6qxEVYCRPOb64uGK15dQNuUw=; b=lKGQfrRQrRMD895ZGRmsE4MAdh
 d3OVUWOLsq1F3F7fi/EJvlcfN/Z1zNYOaNppx23rxOBbmXdrIgJ+GYqlP1jjHY/OjXJFaR3c1h87C
 XyhaSEyf+JjxIRVU3ifzIxjfGnfoZyYF15eBfoGz52B5/ft692HIdLP0HchqViMsXIRM=;
Received: from fhigh3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sZgHO-0000sJ-LC for linux1394-devel@lists.sourceforge.net;
 Fri, 02 Aug 2024 00:36:23 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id D320B1151A9E;
 Thu,  1 Aug 2024 20:36:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Thu, 01 Aug 2024 20:36:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722558971; x=
 1722645371; bh=TtGB+6eUSoiVjMb0D0R6qxEVYCRPOb64uGK15dQNuUw=; b=Q
 JYqkeUxgIzGEFYcUi+7mj3LpHwJ3eDwTV4lStOwBN9a4KDM1PTQJ8Kyw9e+MeN0o
 Gnvn8Wra+ecGlQ2bOxyFxu7hkMCaQMAKgh15So54l14zP+rV3UxTODMuDB+RdSsl
 JJbUYOndVn6XqpHVECP7P3XMKLsX9d2elkK0oKO3bUHlcIAZ3kxgaISxhdgE7KZz
 +nrdgA23kGI95d+84kSEoeJw1pGu0SWK9Jv940Qe5pt+A3GJY7BdH+SO1ayo61a8
 vuuY5/5yM5YfiAFI0nHg85HUskUeuwOlFZV9wgwW4arl2iIVbyEfXqDkSrK6gAJc
 TY8ax5XGecovwvok4KZvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722558971; x=
 1722645371; bh=TtGB+6eUSoiVjMb0D0R6qxEVYCRPOb64uGK15dQNuUw=; b=t
 WN/HF6MDjMHYN5DjM1eAvsMFO60YhW8HTHFtzFroJsLQ1g0PFHSiMmFeLCrd8c8S
 wIbKauS5OHgGP8gRfngGpPI70zKxsByHUk6/WyXIEvy3XdHbWwXOPXr8q/34uFWe
 DrCeyAb7HmBtVRj+Lippe8hhrzMbp3x2dvLvutsX8YE6k6epTuvhf3oTmuXnjq+Q
 Tns/Ke5gFZo6XSZjS7SmZCm7VA2wAc2M1xN9N6EuyGk9uJo6hn+veXBaOJ9A/LX4
 LOQc1KSI9wu9bXnywmE3ougejaBICgSZyA0+flViea29oI3LOVzuYYI1fybrNOcR
 gKmY3StSTL8VZW7veyHSw==
X-ME-Sender: <xms:-ymsZuwlTetXBwzpykyM2dooQPkRXQPVK_UGYtQXW6_XIupF2Q2oPw>
 <xme:-ymsZqRJcWXNDVQn3OoMbqZQ8JeB_X8PqULi7qh5zCyveAXoIPi9wZqKBXenB6Xu_
 _E7_4nS3ktED2c8juI>
X-ME-Received: <xmr:-ymsZgUL9gt-Mv2TR_owOR5_XQFZLxixzMTImcLx8ti9YPWu8oCov2HAbRwl3GWRZddGqve2EzCLtM4s3rvyen4vRSGy0cDEqjYtnpUp5wzl>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjeelgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:-ymsZkibKOnqEBEHXIY-1yBmrVkzD5offsg5AFGyjM440Q0by2j75A>
 <xmx:-ymsZgCScJQyh02NnqyDz2luHEXryji-bb5Bip0CXUpDBleC9TJZzw>
 <xmx:-ymsZlLGAHDKLFnGRcJKhyk6BRNXqsq4pY7bo04Hm3Oye7bELeSN_g>
 <xmx:-ymsZnCut8RsbZg-jpzVmRcEhebxdlEUn9pHBZUHC5ILZMQSv5a5Aw>
 <xmx:-ymsZjPf--PSMAwZW8en1zjA010wObiO_fPR6fXG9OGkHkRZfpfJ-nZw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Aug 2024 20:36:10 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/4] firewire: ohci: add static inline functions to
 serialize/deserialize data of AT DMA
Date: Fri,  2 Aug 2024 09:36:03 +0900
Message-ID: <20240802003606.109402-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240802003606.109402-1-o-takashi@sakamocchi.jp>
References: <20240802003606.109402-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In 1394 OHCI specification, the format of data for AT DMA
 is different from the format of asynchronous packet in IEEE 1394 specification,
 in its spd and srcBusID fields. This commit adds some static inline functions
 to serialize/deserialize the data of AT DMA. 
 Content analysis details:   (-0.2 points, 6.0 required)
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
 [103.168.172.154 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.154 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sZgHO-0000sJ-LC
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

In 1394 OHCI specification, the format of data for AT DMA is different from
the format of asynchronous packet in IEEE 1394 specification, in its spd
and srcBusID fields.

This commit adds some static inline functions to serialize/deserialize the
data of AT DMA.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci-serdes-test.c |  34 ++++++++
 drivers/firewire/ohci.h             | 115 ++++++++++++++++++++++++++++
 2 files changed, 149 insertions(+)

diff --git a/drivers/firewire/ohci-serdes-test.c b/drivers/firewire/ohci-serdes-test.c
index 304a09ff528e..c6820f4f7ec1 100644
--- a/drivers/firewire/ohci-serdes-test.c
+++ b/drivers/firewire/ohci-serdes-test.c
@@ -40,9 +40,43 @@ static void test_self_id_receive_buffer_deserialization(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, 0xf38b, timestamp);
 }
 
+static void test_at_data_serdes(struct kunit *test)
+{
+	static const __le32 expected[] = {
+		cpu_to_le32(0x00020e80),
+		cpu_to_le32(0xffc2ffff),
+		cpu_to_le32(0xe0000000),
+	};
+	__le32 quadlets[] = {0, 0, 0};
+	bool has_src_bus_id = ohci1394_at_data_get_src_bus_id(expected);
+	unsigned int speed = ohci1394_at_data_get_speed(expected);
+	unsigned int tlabel = ohci1394_at_data_get_tlabel(expected);
+	unsigned int retry = ohci1394_at_data_get_retry(expected);
+	unsigned int tcode = ohci1394_at_data_get_tcode(expected);
+	unsigned int destination_id = ohci1394_at_data_get_destination_id(expected);
+	u64 destination_offset = ohci1394_at_data_get_destination_offset(expected);
+
+	KUNIT_EXPECT_FALSE(test, has_src_bus_id);
+	KUNIT_EXPECT_EQ(test, 0x02, speed);
+	KUNIT_EXPECT_EQ(test, 0x03, tlabel);
+	KUNIT_EXPECT_EQ(test, 0x02, retry);
+	KUNIT_EXPECT_EQ(test, 0x08, tcode);
+
+	ohci1394_at_data_set_src_bus_id(quadlets, has_src_bus_id);
+	ohci1394_at_data_set_speed(quadlets, speed);
+	ohci1394_at_data_set_tlabel(quadlets, tlabel);
+	ohci1394_at_data_set_retry(quadlets, retry);
+	ohci1394_at_data_set_tcode(quadlets, tcode);
+	ohci1394_at_data_set_destination_id(quadlets, destination_id);
+	ohci1394_at_data_set_destination_offset(quadlets, destination_offset);
+
+	KUNIT_EXPECT_MEMEQ(test, quadlets, expected, sizeof(expected));
+}
+
 static struct kunit_case ohci_serdes_test_cases[] = {
 	KUNIT_CASE(test_self_id_count_register_deserialization),
 	KUNIT_CASE(test_self_id_receive_buffer_deserialization),
+	KUNIT_CASE(test_at_data_serdes),
 	{}
 };
 
diff --git a/drivers/firewire/ohci.h b/drivers/firewire/ohci.h
index 9ed36cfc6cae..a5501996137c 100644
--- a/drivers/firewire/ohci.h
+++ b/drivers/firewire/ohci.h
@@ -154,6 +154,121 @@
 #define OHCI1394_evt_flushed		0xf
 
 
+// Asynchronous Transmit DMA.
+//
+// The content of first two quadlets of data for AT DMA is different from the header for IEEE 1394
+// asynchronous packet.
+
+#define OHCI1394_AT_DATA_Q0_srcBusID_MASK		0x00800000
+#define OHCI1394_AT_DATA_Q0_srcBusID_SHIFT		23
+#define OHCI1394_AT_DATA_Q0_spd_MASK			0x00070000
+#define OHCI1394_AT_DATA_Q0_spd_SHIFT			16
+#define OHCI1394_AT_DATA_Q0_tLabel_MASK			0x0000fc00
+#define OHCI1394_AT_DATA_Q0_tLabel_SHIFT		10
+#define OHCI1394_AT_DATA_Q0_rt_MASK			0x00000300
+#define OHCI1394_AT_DATA_Q0_rt_SHIFT			8
+#define OHCI1394_AT_DATA_Q0_tCode_MASK			0x000000f0
+#define OHCI1394_AT_DATA_Q0_tCode_SHIFT			4
+#define OHCI1394_AT_DATA_Q1_destinationId_MASK		0xffff0000
+#define OHCI1394_AT_DATA_Q1_destinationId_SHIFT		16
+#define OHCI1394_AT_DATA_Q1_destinationOffsetHigh_MASK	0x0000ffff
+#define OHCI1394_AT_DATA_Q1_destinationOffsetHigh_SHIFT	0
+#define OHCI1394_AT_DATA_Q1_rCode_MASK			0x0000f000
+#define OHCI1394_AT_DATA_Q1_rCode_SHIFT			12
+
+static inline bool ohci1394_at_data_get_src_bus_id(const __le32 *data)
+{
+	return !!((data[0] & OHCI1394_AT_DATA_Q0_srcBusID_MASK) >> OHCI1394_AT_DATA_Q0_srcBusID_SHIFT);
+}
+
+static inline void ohci1394_at_data_set_src_bus_id(__le32 *data, bool src_bus_id)
+{
+	data[0] &= cpu_to_le32(~OHCI1394_AT_DATA_Q0_srcBusID_MASK);
+	data[0] |= cpu_to_le32((src_bus_id << OHCI1394_AT_DATA_Q0_srcBusID_SHIFT) & OHCI1394_AT_DATA_Q0_srcBusID_MASK);
+}
+
+static inline unsigned int ohci1394_at_data_get_speed(const __le32 *data)
+{
+	return (le32_to_cpu(data[0]) & OHCI1394_AT_DATA_Q0_spd_MASK) >> OHCI1394_AT_DATA_Q0_spd_SHIFT;
+}
+
+static inline void ohci1394_at_data_set_speed(__le32 *data, unsigned int scode)
+{
+	data[0] &= cpu_to_le32(~OHCI1394_AT_DATA_Q0_spd_MASK);
+	data[0] |= cpu_to_le32((scode << OHCI1394_AT_DATA_Q0_spd_SHIFT) & OHCI1394_AT_DATA_Q0_spd_MASK);
+}
+
+static inline unsigned int ohci1394_at_data_get_tlabel(const __le32 *data)
+{
+	return (le32_to_cpu(data[0]) & OHCI1394_AT_DATA_Q0_tLabel_MASK) >> OHCI1394_AT_DATA_Q0_tLabel_SHIFT;
+}
+
+static inline void ohci1394_at_data_set_tlabel(__le32 *data, unsigned int tlabel)
+{
+	data[0] &= cpu_to_le32(~OHCI1394_AT_DATA_Q0_tLabel_MASK);
+	data[0] |= cpu_to_le32((tlabel << OHCI1394_AT_DATA_Q0_tLabel_SHIFT) & OHCI1394_AT_DATA_Q0_tLabel_MASK);
+}
+
+static inline unsigned int ohci1394_at_data_get_retry(const __le32 *data)
+{
+	return (le32_to_cpu(data[0]) & OHCI1394_AT_DATA_Q0_rt_MASK) >> OHCI1394_AT_DATA_Q0_rt_SHIFT;
+}
+
+static inline void ohci1394_at_data_set_retry(__le32 *data, unsigned int retry)
+{
+	data[0] &= cpu_to_le32(~OHCI1394_AT_DATA_Q0_rt_MASK);
+	data[0] |= cpu_to_le32((retry << OHCI1394_AT_DATA_Q0_rt_SHIFT) & OHCI1394_AT_DATA_Q0_rt_MASK);
+}
+
+static inline unsigned int ohci1394_at_data_get_tcode(const __le32 *data)
+{
+	return (le32_to_cpu(data[0]) & OHCI1394_AT_DATA_Q0_tCode_MASK) >> OHCI1394_AT_DATA_Q0_tCode_SHIFT;
+}
+
+static inline void ohci1394_at_data_set_tcode(__le32 *data, unsigned int tcode)
+{
+	data[0] &= cpu_to_le32(~OHCI1394_AT_DATA_Q0_tCode_MASK);
+	data[0] |= cpu_to_le32((tcode << OHCI1394_AT_DATA_Q0_tCode_SHIFT) & OHCI1394_AT_DATA_Q0_tCode_MASK);
+}
+
+static inline unsigned int ohci1394_at_data_get_destination_id(const __le32 *data)
+{
+	return (le32_to_cpu(data[1]) & OHCI1394_AT_DATA_Q1_destinationId_MASK) >> OHCI1394_AT_DATA_Q1_destinationId_SHIFT;
+}
+
+static inline void ohci1394_at_data_set_destination_id(__le32 *data, unsigned int destination_id)
+{
+	data[1] &= cpu_to_le32(~OHCI1394_AT_DATA_Q1_destinationId_MASK);
+	data[1] |= cpu_to_le32((destination_id << OHCI1394_AT_DATA_Q1_destinationId_SHIFT) & OHCI1394_AT_DATA_Q1_destinationId_MASK);
+}
+
+static inline u64 ohci1394_at_data_get_destination_offset(const __le32 *data)
+{
+	u64 hi = (u64)((le32_to_cpu(data[1]) & OHCI1394_AT_DATA_Q1_destinationOffsetHigh_MASK) >> OHCI1394_AT_DATA_Q1_destinationOffsetHigh_SHIFT);
+	u64 lo = (u64)le32_to_cpu(data[2]);
+	return (hi << 32) | lo;
+}
+
+static inline void ohci1394_at_data_set_destination_offset(__le32 *data, u64 offset)
+{
+	u32 hi = (u32)(offset >> 32);
+	u32 lo = (u32)(offset & 0x00000000ffffffff);
+	data[1] &= cpu_to_le32(~OHCI1394_AT_DATA_Q1_destinationOffsetHigh_MASK);
+	data[1] |= cpu_to_le32((hi << OHCI1394_AT_DATA_Q1_destinationOffsetHigh_SHIFT) & OHCI1394_AT_DATA_Q1_destinationOffsetHigh_MASK);
+	data[2] = cpu_to_le32(lo);
+}
+
+static inline unsigned int ohci1394_at_data_get_rcode(const __le32 *data)
+{
+	return (le32_to_cpu(data[1]) & OHCI1394_AT_DATA_Q1_rCode_MASK) >> OHCI1394_AT_DATA_Q1_rCode_SHIFT;
+}
+
+static inline void ohci1394_at_data_set_rcode(__le32 *data, unsigned int rcode)
+{
+	data[1] &= cpu_to_le32(~OHCI1394_AT_DATA_Q1_rCode_MASK);
+	data[1] |= cpu_to_le32((rcode << OHCI1394_AT_DATA_Q1_rCode_SHIFT) & OHCI1394_AT_DATA_Q1_rCode_MASK);
+}
+
 // Self-ID DMA.
 
 #define OHCI1394_SelfIDCount_selfIDError_MASK		0x80000000
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
