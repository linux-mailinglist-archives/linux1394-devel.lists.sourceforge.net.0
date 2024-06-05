Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 266D98FDAE6
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qd-0008Go-9z;
	Wed, 05 Jun 2024 23:52:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0QS-0008GM-1k
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1mJaF1de45yn5OE6CI3ft4NIkPoDExHyNENgh8KNRtk=; b=IZbd6PaHeqE99KjEHtu5Xy7Okr
 bqOSn8L9eu2sinYKmCgJvxooDOip66TDBW9kybQfp7RvShJAIQQ6Q+A30TRZvW9vXlGwEomC5BoTb
 s+I1HMsdZ1m53nEdTKHAf/uCMqu8tB1W257aON5wvftNt0gduS1dHPSx4Tor2EQ1+gWk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1mJaF1de45yn5OE6CI3ft4NIkPoDExHyNENgh8KNRtk=; b=crGm6Jue8ILYsZojaruFek9rpP
 0cldazC0jqAb3/om0ry8qCEeXHYYWAjIVPK27MCXduLQrFbLkINhEwNc5s6Kqv30dVwM6wS9yD8cq
 DZaIDRA/08NjGr38OsiJ1FEp0CBEUtx3bjuTgD21Snx4NPSjuTtmS4BasggFN8XWNZsc=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0QS-0004YB-7v for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.west.internal (Postfix) with ESMTP id DCA641C0005B;
 Wed,  5 Jun 2024 19:52:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 05 Jun 2024 19:52:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717631524; x=
 1717717924; bh=1mJaF1de45yn5OE6CI3ft4NIkPoDExHyNENgh8KNRtk=; b=G
 Cm0nEeeWOPVJJJarcYIdirZhBgmJOooYl5l++ptVObMeO+nG8NaFmhY0vNH0ocHA
 Cjv5GEcNAXXQy4jID/B5kxNAc0DE9Z7axk8xgamfHjurv0kH/yAwTHiHeXc2GTcX
 GHRqnXJ7B+L2Q0F4jdcv1J6rGEem45aUfINNH1leVkKB6hjVtmxVBeSwinUod23R
 IfM/cP42W2E4Y07+2rJXLP04HMFZ8KfKBgTW9s5/Tu/RWOJcUl1JmRs8gtwYSQ/K
 bwfrZjYuJKeqsW6GTkX1eUfcNnaP/dXlqYMZYbUER0zPRveacTDuXkjT5jNrYLKb
 nJtXoQZZ9MfhLi46yw8uw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717631524; x=
 1717717924; bh=1mJaF1de45yn5OE6CI3ft4NIkPoDExHyNENgh8KNRtk=; b=W
 Qxoqwk5y22n8p8hlDt4gEp3GsFNpNQNZxxqtZcCo9rmNeTQ7lfK0odLRAmrIZcr8
 0CMZo7mJZ7eqXjrwqk2LF4gzKPkDe//O6IDoMRH8nwtRufhaNdXO26odTVoiZUyA
 +NBy769xfHzpYnbJ0d7ig7AxVUKJKOm/RqZHwJDRX/oofFGqZv1Fol5GCShn9sYQ
 apT5sdLeXK3NVYzQ3ILsqeFVxsko6YrjcjKDnTUh0+0uQk6VTHgkPT96on5DsZ9W
 KImOaIJNaKzZkROXbmC16qyZqNzDXjO7EJJCN9ZiNgSPZRzgMEZ3od8/lvtC5Nyx
 OtihRMZjy5mxGJAqdxQlQ==
X-ME-Sender: <xms:JPpgZvWLC_0RVFjbyd6s5qBzS8JDgQhrETXCFLxRD_Epc-oqYK2AFQ>
 <xme:JPpgZnnReuFCebseZZiiSvsOBnn2Q5lMSl8jUVUH-5LPNcbQBQ-eFUH0jBBr3dzGY
 mTb1DfSAN7ELRGhjg0>
X-ME-Received: <xmr:JPpgZrY-alrQIZtzjgiscpVg775RS3ET4PAdjm-JX55G5sabKXZGY35-nc0DW0vBdmIt8YROQZN2QmJYmlkSpn3yD4CWLeBuWwJzpATYXNqyLw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:JPpgZqWjP9yh_T1m2RixB8J-m6HffDPA6mKm72RfpVUxPKhD-UP1_A>
 <xmx:JPpgZpmvfiI8R_bjp8mwJG5SOmwBj5n8LMpc4Bu12erQ3JNGMUsQxw>
 <xmx:JPpgZnfWppFsbQJRAw1l1O3QB-D8WmNb-c8f-1zJG2AujdTdO2KwOA>
 <xmx:JPpgZjHMCUNoG0AFuMNLf-05EvTUHPZSehlndahGR0mwwZ0v0h216w>
 <xmx:JPpgZuy2TEbM9-Yn_wU_U0UcKLU2lS471hCos_jAmoPoslPU_9L5Nw4G>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:52:03 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 02/11] firewire: core: add helper function to handle port
 status from self ID sequence and its KUnit test
Date: Thu,  6 Jun 2024 08:51:46 +0900
Message-ID: <20240605235155.116468-3-o-takashi@sakamocchi.jp>
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
 Content preview: The self ID sequence delivers the information about the state
 of port. This commit adds some enumerations to express the state of port,
 and some helper functions to handle the state. It adds a KUnit test for them, 
 too. Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in sa-trusted.bondedsender.org]
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
X-Headers-End: 1sF0QS-0004YB-7v
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

The self ID sequence delivers the information about the state of port.

This commit adds some enumerations to express the state of port, and
some helper functions to handle the state. It adds a KUnit test for them,
too.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/phy-packet-definitions.h     | 43 +++++++++++
 .../firewire/self-id-sequence-helper-test.c   | 73 +++++++++++++++++++
 2 files changed, 116 insertions(+)

diff --git a/drivers/firewire/phy-packet-definitions.h b/drivers/firewire/phy-packet-definitions.h
index 479bb3431afb..4ba8b18aa993 100644
--- a/drivers/firewire/phy-packet-definitions.h
+++ b/drivers/firewire/phy-packet-definitions.h
@@ -15,6 +15,8 @@
 #define SELF_ID_EXTENDED_SEQUENCE_MASK			0x00700000
 #define SELF_ID_EXTENDED_SEQUENCE_SHIFT			20
 
+#define SELF_ID_PORT_STATUS_MASK			0x3
+
 #define SELF_ID_SEQUENCE_MAXIMUM_QUADLET_COUNT		4
 
 static inline bool phy_packet_self_id_get_extended(u32 quadlet)
@@ -75,4 +77,45 @@ static inline const u32 *self_id_sequence_enumerator_next(
 	return self_id_sequence;
 }
 
+enum phy_packet_self_id_port_status {
+	PHY_PACKET_SELF_ID_PORT_STATUS_NONE = 0,
+	PHY_PACKET_SELF_ID_PORT_STATUS_NCONN = 1,
+	PHY_PACKET_SELF_ID_PORT_STATUS_PARENT = 2,
+	PHY_PACKET_SELF_ID_PORT_STATUS_CHILD = 3,
+};
+
+static inline unsigned int self_id_sequence_get_port_capacity(unsigned int quadlet_count)
+{
+	return quadlet_count * 8 - 5;
+}
+
+static inline enum phy_packet_self_id_port_status self_id_sequence_get_port_status(
+		const u32 *self_id_sequence, unsigned int quadlet_count, unsigned int port_index)
+{
+	unsigned int index, shift;
+
+	index = (port_index + 5) / 8;
+	shift = 16 - ((port_index + 5) % 8) * 2;
+
+	if (index < quadlet_count && index < SELF_ID_SEQUENCE_MAXIMUM_QUADLET_COUNT)
+		return (self_id_sequence[index] >> shift) & SELF_ID_PORT_STATUS_MASK;
+
+	return PHY_PACKET_SELF_ID_PORT_STATUS_NONE;
+}
+
+static inline void self_id_sequence_set_port_status(u32 *self_id_sequence, unsigned int quadlet_count,
+						    unsigned int port_index,
+						    enum phy_packet_self_id_port_status status)
+{
+	unsigned int index, shift;
+
+	index = (port_index + 5) / 8;
+	shift = 16 - ((port_index + 5) % 8) * 2;
+
+	if (index < quadlet_count) {
+		self_id_sequence[index] &= ~(SELF_ID_PORT_STATUS_MASK << shift);
+		self_id_sequence[index] |= status << shift;
+	}
+}
+
 #endif // _FIREWIRE_PHY_PACKET_DEFINITIONS_H
diff --git a/drivers/firewire/self-id-sequence-helper-test.c b/drivers/firewire/self-id-sequence-helper-test.c
index e8a435e20241..eed7a2294e64 100644
--- a/drivers/firewire/self-id-sequence-helper-test.c
+++ b/drivers/firewire/self-id-sequence-helper-test.c
@@ -63,9 +63,82 @@ static void test_self_id_sequence_enumerator_invalid(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, PTR_ERR(entry), -EPROTO);
 }
 
+static void test_self_id_sequence_get_port_status(struct kunit *test)
+{
+	static const u32 expected[] = {
+		0x000000e5,
+		0x00839e79,
+		0x0091e79d,
+		0x00a279e4,
+	};
+	u32 quadlets [] = {
+		0x00000001,
+		0x00800001,
+		0x00900001,
+		0x00a00000,
+	};
+	enum phy_packet_self_id_port_status port_status[28];
+	unsigned int port_capacity;
+	unsigned int port_index;
+
+	KUNIT_ASSERT_EQ(test, ARRAY_SIZE(expected), ARRAY_SIZE(quadlets));
+
+	// With an extra port.
+	port_capacity = self_id_sequence_get_port_capacity(ARRAY_SIZE(expected)) + 1;
+	KUNIT_ASSERT_EQ(test, port_capacity, ARRAY_SIZE(port_status));
+
+	for (port_index = 0; port_index < port_capacity; ++port_index) {
+		port_status[port_index] =
+			self_id_sequence_get_port_status(expected, ARRAY_SIZE(expected), port_index);
+		self_id_sequence_set_port_status(quadlets, ARRAY_SIZE(quadlets), port_index,
+						 port_status[port_index]);
+	}
+
+	// Self ID zero.
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_CHILD, port_status[0]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[1]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[2]);
+
+	// Self ID one.
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_CHILD, port_status[3]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[4]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[5]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_CHILD, port_status[6]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[7]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[8]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_CHILD, port_status[9]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[10]);
+
+	// Self ID two.
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[11]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_CHILD, port_status[12]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[13]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[14]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_CHILD, port_status[15]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[16]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[17]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_CHILD, port_status[18]);
+
+	// Self ID three.
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[19]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[20]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_CHILD, port_status[21]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[22]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[23]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_CHILD, port_status[24]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_PARENT, port_status[25]);
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NCONN, port_status[26]);
+
+	// Our of order.
+	KUNIT_EXPECT_EQ(test, PHY_PACKET_SELF_ID_PORT_STATUS_NONE, port_status[27]);
+
+	KUNIT_EXPECT_MEMEQ(test, quadlets, expected, sizeof(expected));
+}
+
 static struct kunit_case self_id_sequence_helper_test_cases[] = {
 	KUNIT_CASE(test_self_id_sequence_enumerator_valid),
 	KUNIT_CASE(test_self_id_sequence_enumerator_invalid),
+	KUNIT_CASE(test_self_id_sequence_get_port_status),
 	{}
 };
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
