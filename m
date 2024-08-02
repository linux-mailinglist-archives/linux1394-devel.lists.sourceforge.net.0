Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D21B4945580
	for <lists+linux1394-devel@lfdr.de>; Fri,  2 Aug 2024 02:36:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sZgHa-0001Ry-3l;
	Fri, 02 Aug 2024 00:36:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sZgHS-0001RP-7W
 for linux1394-devel@lists.sourceforge.net;
 Fri, 02 Aug 2024 00:36:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hld0IfkYJX3gAwEL6QqzZl+AfhUDccknia9yFzpMOfQ=; b=Bnv+iek6NvwoTn1pj8iepkb33O
 lPF92fpxdbE7y3WN/e67kXs0/YUkad5RAUStDInYDxyd6sj+hbj1E5vSQvRJbdYcrv5fLYUnsRlQ0
 nvwITDOf2tzrQK/1LI+06UMgcEb3pKa+gi7lx0Nn3/LqVJITs0gk3mjF5qzfuL/Mk1bU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hld0IfkYJX3gAwEL6QqzZl+AfhUDccknia9yFzpMOfQ=; b=ezbFS2EG3IK1VTTk2uZyo6dnv5
 42TYwshk5UfcbETYRp7Zz+W8ophMt+sIIWXBqC67c7yAwk+1ZnElzJOdV+FPTpzno1r9BdwCTOniJ
 EPJfwwQ/Ny4PBdUL04xbudSpooaZjL/l4Tlg/jRJDykBVvKGYqMjwDvPyYEjbp/GZXx4=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sZgHR-0000sP-6o for linux1394-devel@lists.sourceforge.net;
 Fri, 02 Aug 2024 00:36:26 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 6FFBD138FC7A;
 Thu,  1 Aug 2024 20:36:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 01 Aug 2024 20:36:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722558974; x=
 1722645374; bh=hld0IfkYJX3gAwEL6QqzZl+AfhUDccknia9yFzpMOfQ=; b=R
 fIupct2UTNS2EQJMKmkJAUgeVl1z9WBA/qIE7dJ5pQ3Ge/n2MCA8bxeIQGRGbIRS
 ybvF4qn5AEBpyIDnne8yblxxBmooV8IbjChZA8x7fCZGf9RjmppVY7elgn586BVL
 tSS5DgASzcgpfgN6Afmdjg5u4gUZZpqxh8MYvW/UtdtETjmdLHHbo6jLcJXbtZPF
 Ce8wTPdCdD5uwtcUvkrg6xbS23nUg83WZuhMsuUkVh+4fHhhpjIryc6QhIuhhg8F
 l0Jlm3zzscoQYtmwlNZk0FD4rX7bb0wtHt09almVmcyflQTbYPIlI+gw8wAH6dSR
 vFAF6jMLDgeIZiOACVMcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722558974; x=
 1722645374; bh=hld0IfkYJX3gAwEL6QqzZl+AfhUDccknia9yFzpMOfQ=; b=V
 ShKTIX8TfqHWoH2DJu1iQC8nzjBS4a5GVZDNCgIGfxjrLXTiudpWc1rz1HtEdurz
 1IkPHuSsC1rO1HkVdStzmEpYkNVPa7p3SbC1aA/d+pvcIre8ZOKDnzedUZ8DghIP
 KejW3o3wwyRh6v0ss/Svk9CgoewFXFvDihhj0IPv7YbNIVkzLHRh+BBjvuJ/Gwkd
 aUjne3RQdrS924aattGuRYQAsAfVDiGaAXor9spFLKtZsaxxWVi37/B/+08gnROX
 wZSQIL4cfJK94gNyzcIhlqGjraxJZID52+dSRguwdoQv+1TpdTN6pVLOoy+GgOQD
 2AOg/WZ68j2dnM+2jAaRg==
X-ME-Sender: <xms:_imsZrgT3tR77yOn2Pe9AqmRh5uD8noQXtVsztzyv74fXSTCEeqcaQ>
 <xme:_imsZoDR2y3hmBccZj6mY0MQsSlaGa2QGKlGvvqiCI6g3vzThPIbjPIDambnU8gWs
 P1Qk91MTE_5yXTBPa4>
X-ME-Received: <xmr:_imsZrGLMR7lDbwp7tkd2-5xtKJOO2G_XaLnU2ARAEhY-T8O4Lt592e0c9tQ9c2c7joi7UzC6RVCUwR3G-tThbEUNu7kq-pESaWrg8TXTqLo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjeelgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:_imsZoTsqOg4V6dZnBOXDdfFKyjUl2Rh0LWFt7-46e9pZI1NSpitfw>
 <xmx:_imsZowQX5L3sBfXI4rDXHOKZg3MkjrVaL5NMdN84VJxWzmQlrg8Cw>
 <xmx:_imsZu5vTuVGrRg197pBrhbPuj7gHPhxLZqc8F-pqfiFIngPpx1yLw>
 <xmx:_imsZtwN-yBXbI1E6NRx4QCkgnhNFa6xUO6yDl-n-8ifD5t5e67Vbg>
 <xmx:_imsZj8jj_635hqTh2-ElKAyxMiPpfV-Xrez9fOj2Os4FQ7X7j5q_UIp>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Aug 2024 20:36:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/4] firewire: ohci: add static inline functions to
 serialize/deserialize data of IT DMA
Date: Fri,  2 Aug 2024 09:36:05 +0900
Message-ID: <20240802003606.109402-4-o-takashi@sakamocchi.jp>
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
 Content preview:  In 1394 OHCI specification, the format of data for IT DMA
 is different from the format of isochronous packet in IEEE 1394 specification, 
 in its spd and srcBusID fields. This commit adds some static inline functions
 to serialize/deserialize the data of IT DMA. 
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
 [103.168.172.149 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1sZgHR-0000sP-6o
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

In 1394 OHCI specification, the format of data for IT DMA is different from
the format of isochronous packet in IEEE 1394 specification, in its spd and
srcBusID fields.

This commit adds some static inline functions to serialize/deserialize the
data of IT DMA.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci-serdes-test.c | 32 +++++++++++
 drivers/firewire/ohci.h             | 84 +++++++++++++++++++++++++++++
 2 files changed, 116 insertions(+)

diff --git a/drivers/firewire/ohci-serdes-test.c b/drivers/firewire/ohci-serdes-test.c
index c6820f4f7ec1..ab25ec28aeb5 100644
--- a/drivers/firewire/ohci-serdes-test.c
+++ b/drivers/firewire/ohci-serdes-test.c
@@ -73,10 +73,42 @@ static void test_at_data_serdes(struct kunit *test)
 	KUNIT_EXPECT_MEMEQ(test, quadlets, expected, sizeof(expected));
 }
 
+static void test_it_data_serdes(struct kunit *test)
+{
+	static const __le32 expected[] = {
+		cpu_to_le32(0x000349a7),
+		cpu_to_le32(0x02300000),
+	};
+	__le32 quadlets[] = {0, 0};
+	unsigned int scode = ohci1394_it_data_get_speed(expected);
+	unsigned int tag = ohci1394_it_data_get_tag(expected);
+	unsigned int channel = ohci1394_it_data_get_channel(expected);
+	unsigned int tcode = ohci1394_it_data_get_tcode(expected);
+	unsigned int sync = ohci1394_it_data_get_sync(expected);
+	unsigned int data_length = ohci1394_it_data_get_data_length(expected);
+
+	KUNIT_EXPECT_EQ(test, 0x03, scode);
+	KUNIT_EXPECT_EQ(test, 0x01, tag);
+	KUNIT_EXPECT_EQ(test, 0x09, channel);
+	KUNIT_EXPECT_EQ(test, 0x0a, tcode);
+	KUNIT_EXPECT_EQ(test, 0x7, sync);
+	KUNIT_EXPECT_EQ(test, 0x0230, data_length);
+
+	ohci1394_it_data_set_speed(quadlets, scode);
+	ohci1394_it_data_set_tag(quadlets, tag);
+	ohci1394_it_data_set_channel(quadlets, channel);
+	ohci1394_it_data_set_tcode(quadlets, tcode);
+	ohci1394_it_data_set_sync(quadlets, sync);
+	ohci1394_it_data_set_data_length(quadlets, data_length);
+
+	KUNIT_EXPECT_MEMEQ(test, quadlets, expected, sizeof(expected));
+}
+
 static struct kunit_case ohci_serdes_test_cases[] = {
 	KUNIT_CASE(test_self_id_count_register_deserialization),
 	KUNIT_CASE(test_self_id_receive_buffer_deserialization),
 	KUNIT_CASE(test_at_data_serdes),
+	KUNIT_CASE(test_it_data_serdes),
 	{}
 };
 
diff --git a/drivers/firewire/ohci.h b/drivers/firewire/ohci.h
index a5501996137c..218666cfe14a 100644
--- a/drivers/firewire/ohci.h
+++ b/drivers/firewire/ohci.h
@@ -269,6 +269,90 @@ static inline void ohci1394_at_data_set_rcode(__le32 *data, unsigned int rcode)
 	data[1] |= cpu_to_le32((rcode << OHCI1394_AT_DATA_Q1_rCode_SHIFT) & OHCI1394_AT_DATA_Q1_rCode_MASK);
 }
 
+// Isochronous Transmit DMA.
+//
+// The content of first two quadlets of data for IT DMA is different from the header for IEEE 1394
+// isochronous packet.
+
+#define OHCI1394_IT_DATA_Q0_spd_MASK		0x00070000
+#define OHCI1394_IT_DATA_Q0_spd_SHIFT		16
+#define OHCI1394_IT_DATA_Q0_tag_MASK		0x0000c000
+#define OHCI1394_IT_DATA_Q0_tag_SHIFT		14
+#define OHCI1394_IT_DATA_Q0_chanNum_MASK	0x00003f00
+#define OHCI1394_IT_DATA_Q0_chanNum_SHIFT	8
+#define OHCI1394_IT_DATA_Q0_tcode_MASK		0x000000f0
+#define OHCI1394_IT_DATA_Q0_tcode_SHIFT		4
+#define OHCI1394_IT_DATA_Q0_sy_MASK		0x0000000f
+#define OHCI1394_IT_DATA_Q0_sy_SHIFT		0
+#define OHCI1394_IT_DATA_Q1_dataLength_MASK	0xffff0000
+#define OHCI1394_IT_DATA_Q1_dataLength_SHIFT	16
+
+static inline unsigned int ohci1394_it_data_get_speed(const __le32 *data)
+{
+	return (le32_to_cpu(data[0]) & OHCI1394_IT_DATA_Q0_spd_MASK) >> OHCI1394_IT_DATA_Q0_spd_SHIFT;
+}
+
+static inline void ohci1394_it_data_set_speed(__le32 *data, unsigned int scode)
+{
+	data[0] &= cpu_to_le32(~OHCI1394_IT_DATA_Q0_spd_MASK);
+	data[0] |= cpu_to_le32((scode << OHCI1394_IT_DATA_Q0_spd_SHIFT) & OHCI1394_IT_DATA_Q0_spd_MASK);
+}
+
+static inline unsigned int ohci1394_it_data_get_tag(const __le32 *data)
+{
+	return (le32_to_cpu(data[0]) & OHCI1394_IT_DATA_Q0_tag_MASK) >> OHCI1394_IT_DATA_Q0_tag_SHIFT;
+}
+
+static inline void ohci1394_it_data_set_tag(__le32 *data, unsigned int tag)
+{
+	data[0] &= cpu_to_le32(~OHCI1394_IT_DATA_Q0_tag_MASK);
+	data[0] |= cpu_to_le32((tag << OHCI1394_IT_DATA_Q0_tag_SHIFT) & OHCI1394_IT_DATA_Q0_tag_MASK);
+}
+
+static inline unsigned int ohci1394_it_data_get_channel(const __le32 *data)
+{
+	return (le32_to_cpu(data[0]) & OHCI1394_IT_DATA_Q0_chanNum_MASK) >> OHCI1394_IT_DATA_Q0_chanNum_SHIFT;
+}
+
+static inline void ohci1394_it_data_set_channel(__le32 *data, unsigned int channel)
+{
+	data[0] &= cpu_to_le32(~OHCI1394_IT_DATA_Q0_chanNum_MASK);
+	data[0] |= cpu_to_le32((channel << OHCI1394_IT_DATA_Q0_chanNum_SHIFT) & OHCI1394_IT_DATA_Q0_chanNum_MASK);
+}
+
+static inline unsigned int ohci1394_it_data_get_tcode(const __le32 *data)
+{
+	return (le32_to_cpu(data[0]) & OHCI1394_IT_DATA_Q0_tcode_MASK) >> OHCI1394_IT_DATA_Q0_tcode_SHIFT;
+}
+
+static inline void ohci1394_it_data_set_tcode(__le32 *data, unsigned int tcode)
+{
+	data[0] &= cpu_to_le32(~OHCI1394_IT_DATA_Q0_tcode_MASK);
+	data[0] |= cpu_to_le32((tcode << OHCI1394_IT_DATA_Q0_tcode_SHIFT) & OHCI1394_IT_DATA_Q0_tcode_MASK);
+}
+
+static inline unsigned int ohci1394_it_data_get_sync(const __le32 *data)
+{
+	return (le32_to_cpu(data[0]) & OHCI1394_IT_DATA_Q0_sy_MASK) >> OHCI1394_IT_DATA_Q0_sy_SHIFT;
+}
+
+static inline void ohci1394_it_data_set_sync(__le32 *data, unsigned int sync)
+{
+	data[0] &= cpu_to_le32(~OHCI1394_IT_DATA_Q0_sy_MASK);
+	data[0] |= cpu_to_le32((sync << OHCI1394_IT_DATA_Q0_sy_SHIFT) & OHCI1394_IT_DATA_Q0_sy_MASK);
+}
+
+static inline unsigned int ohci1394_it_data_get_data_length(const __le32 *data)
+{
+	return (le32_to_cpu(data[1]) & OHCI1394_IT_DATA_Q1_dataLength_MASK) >> OHCI1394_IT_DATA_Q1_dataLength_SHIFT;
+}
+
+static inline void ohci1394_it_data_set_data_length(__le32 *data, unsigned int data_length)
+{
+	data[1] &= cpu_to_le32(~OHCI1394_IT_DATA_Q1_dataLength_MASK);
+	data[1] |= cpu_to_le32((data_length << OHCI1394_IT_DATA_Q1_dataLength_SHIFT) & OHCI1394_IT_DATA_Q1_dataLength_MASK);
+}
+
 // Self-ID DMA.
 
 #define OHCI1394_SelfIDCount_selfIDError_MASK		0x80000000
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
