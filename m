Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D855D71489E
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 May 2023 13:34:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3b98-0007KR-Gn;
	Mon, 29 May 2023 11:34:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3b97-0007KA-2F
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5bqeeWc/myARY7M6zJ6hvcbWqg8JkLV/tpb1msg4Npk=; b=ORXF6AylmoGe4H9p8eALzHQTsY
 9gCpcoTmww+Q/L29oaXA8+qqrYv8XPecTvY4TimMXaTEeWiCJQzVsyThadCYpF788BcU3YCDvBUgm
 T4h9tZYA+yJifFBx0rZJIVsKHj+zsLVDRdIhxlp1nmtrwh15qbyaTpriHFZj+5JBAj18=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5bqeeWc/myARY7M6zJ6hvcbWqg8JkLV/tpb1msg4Npk=; b=gH8OcTxZxlrWWir6MaB9+HryL+
 4ZmfcPmaggFJg6BtMhmXasoHYhO0mYoGTp1unVKH5GXbVkIxcg9ehyY1oaugPYwec7oV1ciBXvRGJ
 IHQVGNnA4px2QRc1tzBxLy+Pbfc/4Cklh8IrY06UnojKBwYT1k+khaylhNiIuBstdyM4=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3b97-005hnX-4T for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:41 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 811023200392;
 Mon, 29 May 2023 07:34:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 29 May 2023 07:34:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685360075; x=
 1685446475; bh=5bqeeWc/myARY7M6zJ6hvcbWqg8JkLV/tpb1msg4Npk=; b=H
 KAmWDQCQ+AJ4sQ1YYaBgVvuXP7lxrtfUdM5VJfEFSR4M1BepmcKEKUugFzPTeDZd
 Ua9L4A1p/9mq8W1bKZN3zU0UcDvEfPqyBHGIxkb0knawPxCxUFI2e7nQmFP77roa
 Ikl1ZAHD5JkHaZQGClxyY1sqoYjtxXskp9fHjSNPekomE67a19J86tRdERrK038Q
 NB3xWTA0NPojdENJe2EIDBibmlfjD71khNds49kY+NjHnpQxCaWG5dWSQBLqM01x
 aIBgK1VEAGMVziZKYo33O+Jll/ZDE5P5YlejekbHGpOYf21x3/SX3eLgmmn9x9q1
 nIdCyYLmrFAQIYpWcrExw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1685360075; x=
 1685446475; bh=5bqeeWc/myARY7M6zJ6hvcbWqg8JkLV/tpb1msg4Npk=; b=t
 3r+QgELfaKnKSwrAJLovPzeqK3t2MjB3ErsnuInlqwMOVbxtLsccay9jvGN90D0i
 68X3cVd28U7sdeRNxMtlyONP8lk2HS8MDNSKi0UYJvwA/MDJcOJ2eihP3zv7jEjw
 1JbWKL4WJWOnS+RpF5/DeH5/SHet3g49ajVbF5rIQE8JtKSvoltjMAy2RoWfO79s
 8BBI2X8PcwcBdOQb76FRBPqeSGNlu2YaNgNjKBHAtaWEFeFlbnUPd6Ws+8JP4ire
 +eKnUzlx0Lz++Fg/83Xpo8/Km3DlR3gjEKh3ESs9OQOKXlVad9dwu9l3qDYbqCdo
 Lxc7Ket/HE4IwHOZgV+zA==
X-ME-Sender: <xms:yo10ZOo3o2_Hzj5ayPcchbmvtCM_WTnD80GduPA3f4Yd0IypOXy_tg>
 <xme:yo10ZMomaew5UV622E_l3qdyyFBq6AOjHTWv_MWOMTiaRcI9JHFYTiDsASOrvt960
 mXtulFY7ibMiThFnZY>
X-ME-Received: <xmr:yo10ZDNYNwfB7YXzE7ILsqd5KnsO46RzNRjKB-fz-b1fdKSnw8im7rUSkKHLv1xYPmgAepum4pyP05y7qswI9IdUlPg2utjMql_3UTRaFrwhAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekhedggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:y410ZN7LtZmHdczcLtY93EAi6QzBIAsfu82pfNhRLITuH1sp74U8Cw>
 <xmx:y410ZN4FfXjtonnZ1cjDX7kHPxtb0ECWCC-6qDqFs_V3uc3y24sXbQ>
 <xmx:y410ZNiPDw4dY0aaIahck8Q9YSo940rJPL1eHSh0KLGF62OWOsbBDw>
 <xmx:y410ZPQ0ey4hBDqkwD1rd8VtKBK8ADP7z2LIOAqYN_AVJwJRtU7kCg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 07:34:33 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 11/12] firewire: cdev: add new event to notify phy packet
 with time stamp
Date: Mon, 29 May 2023 20:34:05 +0900
Message-Id: <20230529113406.986289-12-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
References: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q3b97-005hnX-4T
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
index 640e5c05415a..c6ebf02e3d45 100644
--- a/drivers/firewire/uapi-test.c
+++ b/drivers/firewire/uapi-test.c
@@ -59,10 +59,24 @@ static void structure_layout_event_response2(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, 32, offsetof(struct fw_cdev_event_response2, data));
 }
 
+// Added at v6.5.
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
index 13892016c266..d72705b49687 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -49,6 +49,8 @@
 /* available since kernel version 6.5 */
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
 	struct fw_cdev_event_request3		request3;		/* added in 6.5 */
 	struct fw_cdev_event_response2		response2;		/* added in 6.5 */
+	struct fw_cdev_event_phy_packet2	phy_packet2;		/* added in 6.5 */
 };
 
 /* available since kernel version 2.6.22 */
@@ -547,6 +591,8 @@ union fw_cdev_event {
  *  6  (6.5)     - added some event for subactions of asynchronous transaction with time stamp
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
