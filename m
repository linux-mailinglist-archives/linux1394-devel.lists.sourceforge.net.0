Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1753B7109DE
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 May 2023 12:17:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q281f-0005tM-Sf;
	Thu, 25 May 2023 10:16:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q281b-0005rr-5e
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DKCYLbsQPb/xchwUl7JQfieNs7hWP6tRXhDTBLxytjU=; b=LFORyX0y+G05Ck9T9D81uv9yHi
 6Ql3uPWU5PKLyt2fKC1tsEoUonsb3tRXESnCDfct8c54DOZhqLjP3z+uQUzixzXEb4EfnWxtl0vIJ
 ps9Lt6zF3dBCmH1EQ8xGatVhSAMdevsgNZToA7W9XGy7qzDFxxFMi9oqQBDeAh2qW1+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DKCYLbsQPb/xchwUl7JQfieNs7hWP6tRXhDTBLxytjU=; b=AkXw07130UItiaN9vTUL1Hl41D
 iXrfjizVC9tV/8jHldkAdTOXYt6jgHpxQu57omJ8sDlp3nipXFgBZU29T+u6Ky1fBiHI7fPjv3Ypb
 nWPnk8By2BX3J8EVslWTc8KiaTdLw2WivVBK2f4fwfhczo3sIRdZz72VD5ulatGH3+VU=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q281a-0004WC-BR for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id C5D385C0120;
 Thu, 25 May 2023 06:16:44 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 25 May 2023 06:16:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685009804; x=
 1685096204; bh=DKCYLbsQPb/xchwUl7JQfieNs7hWP6tRXhDTBLxytjU=; b=Q
 7k+jH/f5wit+CZkzKHfERBOmCWq8slg2aDJZIzSYPVHiYaSkCTo3FminrQ+e4GK2
 98bbTX4eo7DCt+CZHszE1M7FqOsRdzEoWmVlE8xnTJXjj++Ty2C646LU2RejbVn8
 uJ4OY06FHCfBvk/7MmEkJouM1ba1VmdPM3dQ7hOna/kfHkLyrGiPjRHsdlomn2Kr
 x/rn6h3LmciCYuE6lEgMTKuiDguRIEMl8LUjyEU6lPjjvOfhHEWO+FyHkRAzSLv3
 WBdNDbsBqsCqS08Z6iRvOuwnzEo4+1c+reJvYmb6m4C5irtdHXJY+KrWhyt3TNvi
 w9S238/OgQ4eoi5B38BQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1685009804; x=
 1685096204; bh=DKCYLbsQPb/xchwUl7JQfieNs7hWP6tRXhDTBLxytjU=; b=Z
 4BNLzrGaxaNtEk7ybIvpjzZ3Robav7jU7OQG3tei5urogPQ5BT5rfX0d4k8hLCq1
 d0952Zch0PQl2Hr6dnfLypt9e+iV0wcIeQqS5wwnoY84+/aPYfBjyqWncfgGIzM7
 QGUzR/R3qvKrZmEqKN9N0YAdGLbweyJD7YupeGXF7+RnOCTGYaRl2dGFzwI5Zwld
 s2SHKfVWskqnd3rLkmzEVm6erfmue27f1pzm3wiQy+Yw5J8lkWadCkMMnS+HoamY
 rmpQO7s6laYzoQoPZM41/s/kdE076KiyEHiEhyt0JGAWkRZ4i9MTdxVoMZfNzIL2
 8RVzEFdI81g0Z3Pdl/9Tg==
X-ME-Sender: <xms:jDVvZEkdF2VJfpjmWXT6-htsCMyQzKjKkykrk3pMnv6emmP7sL1Rjg>
 <xme:jDVvZD0qaWTmkQrsWCwAd7qlVxFK3eBYrjJxijssuVRM6-3am3-AmeLelF95TwOTp
 QFxI5luncfw5-UfUZ8>
X-ME-Received: <xmr:jDVvZCoiVgrMjNW9ISPW0Zqj04DvQJMB98SLH14ctxsKrzHNF4EG12vIT28DO86jYfQRyfq_MZt-VeTttQnz6Y-sslF2qRIicnuGLMX8fEO-Zw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:jDVvZAm0-fgIB7EeVJS8M5o81DjMpLcDn4E6BbeQa7hIsis8iPq_4Q>
 <xmx:jDVvZC2CoVy46cCQTf-1iJG1Zsq7gsK1v5DOZutJryBt3YR4qDb0Yw>
 <xmx:jDVvZHt3GxSj4ciTJLjXDj794MjRLzzBG19r9twz7cmYkca_j49bag>
 <xmx:jDVvZH_XpeZQ0Yc7LdLtU9OPpxZjPp9qAcjew_q1H2LHU9yc-rUe3Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 May 2023 06:16:43 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/12] firewire: cdev: add new event to notify phy packet
 with time stamp
Date: Thu, 25 May 2023 19:16:24 +0900
Message-Id: <20230525101625.888906-12-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
References: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit adds new event to notify event of phy packet with
 time stamp field. Unlike the fw_cdev_event_request3 and
 fw_cdev_event_response2, 
 the size of new structure, fw_cdev_event_phy_packet2, is multiples of 8,
 thus padding is not required to keep the same size between Syste [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q281a-0004WC-BR
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
Cc: kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This commit adds new event to notify event of phy packet with time stamp
field.

Unlike the fw_cdev_event_request3 and fw_cdev_event_response2, the size
of new structure, fw_cdev_event_phy_packet2, is multiples of 8, thus
padding is not required to keep the same size between System V ABI for
different architectures.

It is noticeable that for the case of ping request 1394 OHCI controller
does not record the isochronous cycle at which the packet was sent for
the request subaction. Instead, it records round-trip count measured by
hardware at 42.195 MHz resolution.

Cc: kunit-dev@googlegroups.com
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/uapi-test.c       | 14 +++++++
 include/uapi/linux/firewire-cdev.h | 67 +++++++++++++++++++++++++-----
 2 files changed, 71 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/uapi-test.c b/drivers/firewire/uapi-test.c
index c342ba474ee6..9732b5be3844 100644
--- a/drivers/firewire/uapi-test.c
+++ b/drivers/firewire/uapi-test.c
@@ -59,10 +59,24 @@ static void structure_layout_event_response2(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, 32, offsetof(struct fw_cdev_event_response2, data));
 }
 
+// Added at v6.4.
+static void structure_layout_event_phy_packet2(struct kunit *test)
+{
+	KUNIT_EXPECT_EQ(test, 24, sizeof(struct fw_cdev_event_phy_packet2));
+
+	KUNIT_EXPECT_EQ(test, 0, offsetof(struct fw_cdev_event_phy_packet2, closure));
+	KUNIT_EXPECT_EQ(test, 8, offsetof(struct fw_cdev_event_phy_packet2, type));
+	KUNIT_EXPECT_EQ(test, 12, offsetof(struct fw_cdev_event_phy_packet2, rcode));
+	KUNIT_EXPECT_EQ(test, 16, offsetof(struct fw_cdev_event_phy_packet2, length));
+	KUNIT_EXPECT_EQ(test, 20, offsetof(struct fw_cdev_event_phy_packet2, tstamp));
+	KUNIT_EXPECT_EQ(test, 24, offsetof(struct fw_cdev_event_phy_packet2, data));
+}
+
 static struct kunit_case structure_layout_test_cases[] = {
 	KUNIT_CASE(structure_layout_event_response),
 	KUNIT_CASE(structure_layout_event_request3),
 	KUNIT_CASE(structure_layout_event_response2),
+	KUNIT_CASE(structure_layout_event_phy_packet2),
 	{}
 };
 
diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
index ae8ccf7d7d2a..155e71598cb4 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -49,6 +49,8 @@
 /* available since kernel version 6.3 */
 #define FW_CDEV_EVENT_REQUEST3				0x0a
 #define FW_CDEV_EVENT_RESPONSE2				0x0b
+#define FW_CDEV_EVENT_PHY_PACKET_SENT2			0x0c
+#define FW_CDEV_EVENT_PHY_PACKET_RECEIVED2		0x0d
 
 /**
  * struct fw_cdev_event_common - Common part of all fw_cdev_event_* types
@@ -423,20 +425,59 @@ struct fw_cdev_event_iso_resource {
  * @type:	%FW_CDEV_EVENT_PHY_PACKET_SENT or %..._RECEIVED
  * @rcode:	%RCODE_..., indicates success or failure of transmission
  * @length:	Data length in bytes
+ * @data:	Incoming data for %FW_CDEV_IOC_RECEIVE_PHY_PACKETS. For %FW_CDEV_IOC_SEND_PHY_PACKET
+ *		the field has the same data in the request, thus the length of 8 bytes.
+ *
+ * This event is sent instead of &fw_cdev_event_phy_packet2 if the kernel or
+ * the client implements ABI version <= 5. It has the lack of time stamp field comparing to
+ * &fw_cdev_event_phy_packet2.
+ */
+struct fw_cdev_event_phy_packet {
+	__u64 closure;
+	__u32 type;
+	__u32 rcode;
+	__u32 length;
+	__u32 data[];
+};
+
+/**
+ * struct fw_cdev_event_phy_packet2 - A PHY packet was transmitted or received with time stamp.
+ * @closure:	See &fw_cdev_event_common; set by %FW_CDEV_IOC_SEND_PHY_PACKET
+ *		or %FW_CDEV_IOC_RECEIVE_PHY_PACKETS ioctl
+ * @type:	%FW_CDEV_EVENT_PHY_PACKET_SENT2 or %FW_CDEV_EVENT_PHY_PACKET_RECEIVED2
+ * @rcode:	%RCODE_..., indicates success or failure of transmission
+ * @length:	Data length in bytes
+ * @tstamp:	For %FW_CDEV_EVENT_PHY_PACKET_RECEIVED2, the time stamp of isochronous cycle at
+ *		which the packet arrived. For %FW_CDEV_EVENT_PHY_PACKET_SENT2 and non-ping packet,
+ *		the time stamp of isochronous cycle at which the packet was sent. For ping packet,
+ *		the tick count for round-trip time measured by 1394 OHCI controller.
+ * The time stamp of isochronous cycle at which either the response was sent for
+ *		%FW_CDEV_EVENT_PHY_PACKET_SENT2 or the request arrived for
+ *		%FW_CDEV_EVENT_PHY_PACKET_RECEIVED2.
  * @data:	Incoming data
  *
- * If @type is %FW_CDEV_EVENT_PHY_PACKET_SENT, @length is 0 and @data empty,
- * except in case of a ping packet:  Then, @length is 4, and @data[0] is the
- * ping time in 49.152MHz clocks if @rcode is %RCODE_COMPLETE.
+ * If @type is %FW_CDEV_EVENT_PHY_PACKET_SENT2, @length is 8 and @data consists of the two PHY
+ * packet quadlets to be sent, in host byte order,
  *
- * If @type is %FW_CDEV_EVENT_PHY_PACKET_RECEIVED, @length is 8 and @data
- * consists of the two PHY packet quadlets, in host byte order.
+ * If @type is %FW_CDEV_EVENT_PHY_PACKET_RECEIVED2, @length is 8 and @data consists of the two PHY
+ * packet quadlets, in host byte order.
+ *
+ * For %FW_CDEV_EVENT_PHY_PACKET_RECEIVED2, the @tstamp is the isochronous cycle at which the
+ * packet arrived. It is 16 bit integer value and the higher 3 bits expresses three low order bits
+ * of second field and the rest 13 bits expresses cycle field in the format of CYCLE_TIME register.
+ *
+ * For %FW_CDEV_EVENT_PHY_PACKET_SENT2, the @tstamp has different meanings whether to sent the
+ * packet for ping or not. If it's not for ping, the @tstamp is the isochronous cycle at which the
+ * packet was sent, and use the same format as the case of %FW_CDEV_EVENT_PHY_PACKET_SENT2. If it's
+ * for ping, the @tstamp is for round-trip time measured by 1394 OHCI controller with 42.195 MHz
+ * resolution.
  */
-struct fw_cdev_event_phy_packet {
+struct fw_cdev_event_phy_packet2 {
 	__u64 closure;
 	__u32 type;
 	__u32 rcode;
 	__u32 length;
+	__u32 tstamp;
 	__u32 data[];
 };
 
@@ -459,6 +500,8 @@ struct fw_cdev_event_phy_packet {
  *
  * @request3:		Valid if @common.type == %FW_CDEV_EVENT_REQUEST3
  * @response2:		Valid if @common.type == %FW_CDEV_EVENT_RESPONSE2
+ * @phy_packet2:	Valid if @common.type == %FW_CDEV_EVENT_PHY_PACKET_SENT2 or
+ *				%FW_CDEV_EVENT_PHY_PACKET_RECEIVED2
  *
  * Convenience union for userspace use.  Events could be read(2) into an
  * appropriately aligned char buffer and then cast to this union for further
@@ -480,6 +523,7 @@ union fw_cdev_event {
 	struct fw_cdev_event_phy_packet		phy_packet;		/* added in 2.6.36 */
 	struct fw_cdev_event_request3		request3;		/* added in 6.3 */
 	struct fw_cdev_event_response2		response2;		/* added in 6.3 */
+	struct fw_cdev_event_phy_packet2	phy_packet2;		/* added in 6.3 */
 };
 
 /* available since kernel version 2.6.22 */
@@ -547,6 +591,8 @@ union fw_cdev_event {
  *  6  (6.4)     - added some event for subactions of asynchronous transaction with time stamp
  *                   - %FW_CDEV_EVENT_REQUEST3
  *                   - %FW_CDEV_EVENT_RESPONSE2
+ *                   - %FW_CDEV_EVENT_PHY_PACKET_SENT2
+ *                   - %FW_CDEV_EVENT_PHY_PACKET_RECEIVED2
  */
 
 /**
@@ -1100,8 +1146,8 @@ struct fw_cdev_send_stream_packet {
  * @data:	First and second quadlet of the PHY packet
  * @generation:	The bus generation where packet is valid
  *
- * The %FW_CDEV_IOC_SEND_PHY_PACKET ioctl sends a PHY packet to all nodes
- * on the same card as this device.  After transmission, an
+ * The %FW_CDEV_IOC_SEND_PHY_PACKET ioctl sends a PHY packet to all nodes on the same card as this
+ * device.  After transmission, either %FW_CDEV_EVENT_PHY_PACKET_SENT event or
  * %FW_CDEV_EVENT_PHY_PACKET_SENT event is generated.
  *
  * The payload @data\[\] shall be specified in host byte order.  Usually,
@@ -1120,8 +1166,9 @@ struct fw_cdev_send_phy_packet {
  * struct fw_cdev_receive_phy_packets - start reception of PHY packets
  * @closure: Passed back to userspace in phy packet events
  *
- * This ioctl activates issuing of %FW_CDEV_EVENT_PHY_PACKET_RECEIVED due to
- * incoming PHY packets from any node on the same bus as the device.
+ * This ioctl activates issuing of either %FW_CDEV_EVENT_PHY_PACKET_RECEIVED or
+ * %FW_CDEV_EVENT_PHY_PACKET_RECEIVED2 due to incoming PHY packets from any node on the same bus
+ * as the device.
  *
  * The ioctl is only permitted on device files which represent a local node.
  */
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
