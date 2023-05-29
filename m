Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8426971489A
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 May 2023 13:34:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3b97-0005Tp-4F;
	Mon, 29 May 2023 11:34:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3b91-0005Tb-ET
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y2dyz0bs0I2fbKhF3IYp4zE0pAAIp0ALOv0TsADA8wU=; b=arCNpm4ZGePvvx9hvHU7kHtfOA
 1HcCmGBORpyzC53JSQJjgccuXzPyOGDLew9MyCu3pvTGzLOmjgZVm8HlpQ9kGCr3lB/u8F7Bhrh9i
 SaihcVMUJoTKf0x6XAYMiSPxBeR9TavJJHyUwyJBpZVk2WOh4ppukpE7vbTotVv7sZrg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y2dyz0bs0I2fbKhF3IYp4zE0pAAIp0ALOv0TsADA8wU=; b=EB8aUFnyi44jZjwcUHkKsMNSz9
 RnWhV44mRa+cEo3xDG+WBNFayHa4zgT5XhToHuYntPU13+V8c6umAOh3yH85KFPC+pkRaI9eeq5E7
 y8yn8N+Ea452AlzNxA4DuPnbDmS2Z/hLR13YogxLSEirKdvjwgiuPp5QHxAS9vRwbnXA=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3b91-005hnA-0v for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 637303200932;
 Mon, 29 May 2023 07:34:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 29 May 2023 07:34:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685360069; x=
 1685446469; bh=y2dyz0bs0I2fbKhF3IYp4zE0pAAIp0ALOv0TsADA8wU=; b=j
 ftBtRqwCCirR4laF+AGrG5xCtXrjSKHUBQJZ0UHCyP36yN9HTvj9urvd1pqJHXXf
 txBQvKju8kzbfRcMjjUCWPNA1+Cf2QGTgtSSRmrbQMbz0SJTv+kVR2JLTU8ij9eG
 CRAtr39snEixduSZvuZlGPGzBeGb6WJQtef3c3OD74bLhaoiZOmod35T1FLRYZpX
 Qml+Dret2Jh9xGB/+b5C5FH/7eX3LDTWo7G7WXTmF2xP+v7qu9uTSKTn1ajY8CId
 Izo03Q92Z6lhzyEaCVWPXYFMhc0kgJB7osAPRGgQyYFWxwxIVSEVk941lxV6c++I
 Js0bpAoMgf5++EHSdS5yA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1685360069; x=
 1685446469; bh=y2dyz0bs0I2fbKhF3IYp4zE0pAAIp0ALOv0TsADA8wU=; b=o
 p+yUw+p7cpeSwkR2Bpc3/CvxBLdbdV4ny22j+kLXWtUPvN56s8aGEVy7J8NjZMUh
 JO6Rq+PnG7D2dNGcTKxpzLVi+HBXJ6FN86nVMFtSCoxI3vZq5Ba/BILmA+wBiXfW
 KuZfwSfw3sGtnO30aEWH7yaxwW0uFWNbx5EOBazgbyemHnDg25gjQ7/pc2nGFCXo
 UjrsdQ1RBAjw9BiajtrxWowAuNZbzd5yImfXLY5qio1A7xF0iyiHgIl2QbQe6g6M
 hRH9uFfXen4CsOMm4supocrQlrIqpPINHVaU8U/Mnsdo86acgtwdQoSMZPX2P5Iq
 54O5vA+mBBbRcFXuk6koQ==
X-ME-Sender: <xms:xI10ZC70qH4ThZgGgDuZdfYUOr6JlP7Dred8SyhZ9-iPEgH8D-t1iQ>
 <xme:xI10ZL5nr_-Y49xK0b7k1De-pkyHKi_0FH9h256j6R6Ce2EcMsV8piEc4N1BYHiEn
 1RGlsmz_eaTwyT8sSs>
X-ME-Received: <xmr:xI10ZBc4bNNbAxHU7mzclw7_-h1STPlokaC8pt0JpZpAJUm8D7jVu_vYvERe50gOzSHi6QIb0sf4gDCFZ-7Fdm62hSjKLLfvxs9O49AWnnJ_DA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekhedggedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:xI10ZPL3jyuP2twXZlsjxO_I4cTcF4BBajfGLBAOF4_BJDGcWYMQnA>
 <xmx:xI10ZGLCa5CQLcgeWTPPlCvyL_5M56Clgcr0ZJvicUVZDhxVmoOD4g>
 <xmx:xI10ZAxsxP3a8eSfq4zMpI5YH4S68Wj3jwWLjBYH0a80B6DaYgb_cg>
 <xmx:xY10ZIhP30cJcDwVnX2yz1Xep08Wc3gaJe-zb1k4HHWJVTyqFgTlBA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 07:34:27 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 08/12] firewire: cdev: add new event to notify response
 subaction with time stamp
Date: Mon, 29 May 2023 20:34:02 +0900
Message-Id: <20230529113406.986289-9-o-takashi@sakamocchi.jp>
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
 Content preview: This commit adds new event to notify event of response
 subaction
 with time stamp field. Current compiler implementation of System V ABI selects
 one of structure members which has the maximum alignment size in the structure
 to decide the size of structure. In the case of fw_cdev_event_req [...] 
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
X-Headers-End: 1q3b91-005hnA-0v
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

This commit adds new event to notify event of response subaction with
time stamp field.

Current compiler implementation of System V ABI selects one of structure
members which has the maximum alignment size in the structure to decide
the size of structure. In the case of fw_cdev_event_request3 structure,
it is closure member which has 8 byte storage. The size of alignment for
the type of 8 byte storage differs depending on architectures; 4 byte for
i386 architecture and 8 byte for the others including x32 architecture.
It is inconvenient to device driver developer to use structure layout
which varies between architectures since the developer takes care of ioctl
compat layer. This commit adds 32 bit member for padding to keep the
size of structure as multiples of 8.

Cc: kunit-dev@googlegroups.com
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/uapi-test.c       | 15 ++++++++
 include/uapi/linux/firewire-cdev.h | 59 +++++++++++++++++++++++++-----
 2 files changed, 64 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/uapi-test.c b/drivers/firewire/uapi-test.c
index dd95899de316..640e5c05415a 100644
--- a/drivers/firewire/uapi-test.c
+++ b/drivers/firewire/uapi-test.c
@@ -45,9 +45,24 @@ static void structure_layout_event_request3(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, 56, offsetof(struct fw_cdev_event_request3, data));
 }
 
+// Added at v6.5.
+static void structure_layout_event_response2(struct kunit *test)
+{
+	KUNIT_EXPECT_EQ(test, 32, sizeof(struct fw_cdev_event_response2));
+
+	KUNIT_EXPECT_EQ(test, 0, offsetof(struct fw_cdev_event_response2, closure));
+	KUNIT_EXPECT_EQ(test, 8, offsetof(struct fw_cdev_event_response2, type));
+	KUNIT_EXPECT_EQ(test, 12, offsetof(struct fw_cdev_event_response2, rcode));
+	KUNIT_EXPECT_EQ(test, 16, offsetof(struct fw_cdev_event_response2, length));
+	KUNIT_EXPECT_EQ(test, 20, offsetof(struct fw_cdev_event_response2, request_tstamp));
+	KUNIT_EXPECT_EQ(test, 24, offsetof(struct fw_cdev_event_response2, response_tstamp));
+	KUNIT_EXPECT_EQ(test, 32, offsetof(struct fw_cdev_event_response2, data));
+}
+
 static struct kunit_case structure_layout_test_cases[] = {
 	KUNIT_CASE(structure_layout_event_response),
 	KUNIT_CASE(structure_layout_event_request3),
+	KUNIT_CASE(structure_layout_event_response2),
 	{}
 };
 
diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
index 7767cd53a013..13892016c266 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -48,6 +48,7 @@
 
 /* available since kernel version 6.5 */
 #define FW_CDEV_EVENT_REQUEST3				0x0a
+#define FW_CDEV_EVENT_RESPONSE2				0x0b
 
 /**
  * struct fw_cdev_event_common - Common part of all fw_cdev_event_* types
@@ -106,6 +107,29 @@ struct fw_cdev_event_bus_reset {
  * @length:	Data length, i.e. the response's payload size in bytes
  * @data:	Payload data, if any
  *
+ * This event is sent instead of &fw_cdev_event_response if the kernel or the client implements
+ * ABI version <= 5. It has the lack of time stamp field comparing to &fw_cdev_event_response2.
+ */
+struct fw_cdev_event_response {
+	__u64 closure;
+	__u32 type;
+	__u32 rcode;
+	__u32 length;
+	__u32 data[];
+};
+
+/**
+ * struct fw_cdev_event_response2 - Sent when a response packet was received
+ * @closure:	See &fw_cdev_event_common; set by %FW_CDEV_IOC_SEND_REQUEST
+ *		or %FW_CDEV_IOC_SEND_BROADCAST_REQUEST
+ *		or %FW_CDEV_IOC_SEND_STREAM_PACKET ioctl
+ * @type:	See &fw_cdev_event_common; always %FW_CDEV_EVENT_RESPONSE
+ * @rcode:	Response code returned by the remote node
+ * @length:	Data length, i.e. the response's payload size in bytes
+ * @request_tstamp:	The time stamp of isochronous cycle at which the request was sent.
+ * @request_tstamp:	The time stamp of isochronous cycle at which the response was sent.
+ * @data:	Payload data, if any
+ *
  * This event is sent when the stack receives a response to an outgoing request
  * sent by %FW_CDEV_IOC_SEND_REQUEST ioctl.  The payload data for responses
  * carrying data (read and lock responses) follows immediately and can be
@@ -115,12 +139,25 @@ struct fw_cdev_event_bus_reset {
  * involve response packets.  This includes unified write transactions,
  * broadcast write transactions, and transmission of asynchronous stream
  * packets.  @rcode indicates success or failure of such transmissions.
+ *
+ * The value of @request_tstamp expresses the isochronous cycle at which the request was sent to
+ * initiate the transaction. The value of @response_tstamp expresses the isochronous cycle at which
+ * the response arrived to complete the transaction. Each value is unsigned 16 bit integer
+ * containing three low order bits of second field and all 13 bits of cycle field in format of
+ * CYCLE_TIMER register.
  */
-struct fw_cdev_event_response {
+struct fw_cdev_event_response2 {
 	__u64 closure;
 	__u32 type;
 	__u32 rcode;
 	__u32 length;
+	__u32 request_tstamp;
+	__u32 response_tstamp;
+	/*
+	 * Padding to keep the size of structure as multiples of 8 in various architectures since
+	 * 4 byte alignment is used for 8 byte of object type in System V ABI for i386 architecture.
+	 */
+	__u32 padding;
 	__u32 data[];
 };
 
@@ -421,6 +458,7 @@ struct fw_cdev_event_phy_packet {
  *				%FW_CDEV_EVENT_PHY_PACKET_RECEIVED
  *
  * @request3:		Valid if @common.type == %FW_CDEV_EVENT_REQUEST3
+ * @response2:		Valid if @common.type == %FW_CDEV_EVENT_RESPONSE2
  *
  * Convenience union for userspace use.  Events could be read(2) into an
  * appropriately aligned char buffer and then cast to this union for further
@@ -441,6 +479,7 @@ union fw_cdev_event {
 	struct fw_cdev_event_iso_resource	iso_resource;		/* added in 2.6.30 */
 	struct fw_cdev_event_phy_packet		phy_packet;		/* added in 2.6.36 */
 	struct fw_cdev_event_request3		request3;		/* added in 6.5 */
+	struct fw_cdev_event_response2		response2;		/* added in 6.5 */
 };
 
 /* available since kernel version 2.6.22 */
@@ -507,6 +546,7 @@ union fw_cdev_event {
  *               - added %FW_CDEV_IOC_FLUSH_ISO
  *  6  (6.5)     - added some event for subactions of asynchronous transaction with time stamp
  *                   - %FW_CDEV_EVENT_REQUEST3
+ *                   - %FW_CDEV_EVENT_RESPONSE2
  */
 
 /**
@@ -552,11 +592,11 @@ struct fw_cdev_get_info {
  * @data:	Userspace pointer to payload
  * @generation:	The bus generation where packet is valid
  *
- * Send a request to the device.  This ioctl implements all outgoing requests.
- * Both quadlet and block request specify the payload as a pointer to the data
- * in the @data field.  Once the transaction completes, the kernel writes an
- * &fw_cdev_event_response event back.  The @closure field is passed back to
- * user space in the response event.
+ * Send a request to the device.  This ioctl implements all outgoing requests. Both quadlet and
+ * block request specify the payload as a pointer to the data in the @data field. Once the
+ * transaction completes, the kernel writes either &fw_cdev_event_response event or
+ * &fw_cdev_event_response event back. The @closure field is passed back to user space in the
+ * response event.
  */
 struct fw_cdev_send_request {
 	__u32 tcode;
@@ -1039,10 +1079,9 @@ struct fw_cdev_allocate_iso_resource {
  * @generation:	The bus generation where packet is valid
  * @speed:	Speed to transmit at
  *
- * The %FW_CDEV_IOC_SEND_STREAM_PACKET ioctl sends an asynchronous stream packet
- * to every device which is listening to the specified channel.  The kernel
- * writes an &fw_cdev_event_response event which indicates success or failure of
- * the transmission.
+ * The %FW_CDEV_IOC_SEND_STREAM_PACKET ioctl sends an asynchronous stream packet to every device
+ * which is listening to the specified channel. The kernel writes either &fw_cdev_event_response
+ * event or &fw_cdev_event_response2 event which indicates success or failure of the transmission.
  */
 struct fw_cdev_send_stream_packet {
 	__u32 length;
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
