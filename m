Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B78A67B232
	for <lists+linux1394-devel@lfdr.de>; Wed, 25 Jan 2023 13:03:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pKeV2-0002BC-Po;
	Wed, 25 Jan 2023 12:03:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pKeUw-00029j-O2
 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mhbmLZ5ifTaOHOF/yXnONpnLZPjUXL3DFTwSnnNSvwY=; b=hC/xZ7QOLkXPkUDZu5TDCEN3PD
 WbM6ntA1aQcLznF7sy+AFnsGgA2YMVYOWu8x4doD1XkaYUKCw8WcXuT1Kh3qGBJWrvqkDXKGVWZmO
 WGHZfGCxf6dta+8h4hwU6sRNbXkNhL/6lbiBq8DC6aStAkG5obtyWjc6EoukGOZQ1N88=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mhbmLZ5ifTaOHOF/yXnONpnLZPjUXL3DFTwSnnNSvwY=; b=RvsOzoUNkBO9s9EWBe699nuvZp
 yzZWh2sy3B0MMIpkk2YmVzMdF43uYuvkM4rkRSDrfUxcOhFmF/C7lOvLGpr22eV0XYBBai/ru1wfo
 89kB83S0Y+DReV0Hfs58i/wa4jUnu7gewFwvRDhBw/e5FRBJfaqlmvmkfmBd5FSS/8lw=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKeUn-00088J-Vj for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:25 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id CB9305C007C;
 Wed, 25 Jan 2023 07:03:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 25 Jan 2023 07:03:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1674648189; x=
 1674734589; bh=mhbmLZ5ifTaOHOF/yXnONpnLZPjUXL3DFTwSnnNSvwY=; b=S
 B+BYx1yjRqCI0WXovu2K9Q4Zcude4clN/OK82O70XCgjubM4ng9IAcRWy6RbqqZZ
 6AWYpsH7QEURWCbTUcIAT0UR3fNqA9R8rBA8Hzr1IT0ZUBYPjVnmkpI2Du8tC65Z
 F7bchCAAK+hMOyiHUlKPgDSZqXBeXBbtf1eX2ta9+jopIFxa0Jh7erB1VCW602XZ
 WuThmoMPUJ+M19V42fVWU00h9fZC1UsV0+hu+3L4/Bz99I//vOEnQvoUKVLdiWzA
 8M7PP0ZL6CpOP0M7W2ub88qpNeLfY3jnLvNcPbBdMj+cHvW4few8RSXDcPnERvoc
 XVQufy0VLJbyyFyONPr4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1674648189; x=1674734589; bh=mhbmLZ5ifTaOH
 OF/yXnONpnLZPjUXL3DFTwSnnNSvwY=; b=hJUJI5SIP7KEQIwmNhPfPdyhu24dY
 D06VYrJgQ34jNuaxMteQi5pQx8265GVlSknkSCAIg77ou3w8wtdr2VvAtGAVeSTD
 xSV5/bVfwEmwnLAS0PQhuTdW3vBWkEuv+wm02VqqK6UO0ed+WgIahZDY1nTyo9yY
 5rkQ91IHwlDxjv6FyNYqYsjM2i3jcK6m1vIfDi3HY90l/iCEcqmoTboJ5i5BfHFN
 VqbPS2WapYD4b/1UknJd9eftDR9ib8Y0Umb8WFZXyy/g9EZpf0ta/MuzYAualS3V
 8PCRqOF4WrW31LlEOOGByH91TtjHmSe6onl+S4Z1up0ZdQJTfDEQtLbVA==
X-ME-Sender: <xms:fRrRY6rLlA55Ib8doLEW-6XCUoLMsHOLLgyjYXPGfeq9WOcpD6uHqg>
 <xme:fRrRY4qPA1mCvqpPM7f-uU8844fNY1i4NV8hSuM5NDAM8d3WH7t75Rk3Bx434Dmd6
 IZK_SiGEqVo2SlQyAQ>
X-ME-Received: <xmr:fRrRY_NxEhBtnowuXuAWamC158aINjW4Co3jaOq0krS3O5HiX0SaTFCdZpbELDRlToqEl8Yhgcf_S2k1XM491167X13D_4BtG6p3NlX7X4RI8JuscDJRfP4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:fRrRY55CInUNtNXnSPhFyXWrf36LFm3uGsvL4RQPaeW03azyHFVmxQ>
 <xmx:fRrRY54VXFGWrWOlP61PI8NrizBvFjJFSLE_xnZtMW4GChshExw-nw>
 <xmx:fRrRY5jEL9L6PtCeiI3VJ6sBR3L5H3bXDTZcfOY9pTgJPUQnH2uDTQ>
 <xmx:fRrRY5H47KxV3nLdrexxa_lsYQQdYN5fA3aAFsJHQAGb07HCKdZ-nA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jan 2023 07:03:08 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 02/11] firewire: cdev: add new event to notify request
 subaction with time stamp
Date: Wed, 25 Jan 2023 21:02:52 +0900
Message-Id: <20230125120301.51585-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
References: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit adds new event to notify event of request
 subaction
 with time stamp field. Current compiler implementation of System V ABI selects
 one of structure members which has the maximum alignment size in the structure
 to decide the size of structure. In the case of fw_cdev_event_req [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pKeUn-00088J-Vj
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
Cc: tiwai@suse.de, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This commit adds new event to notify event of request subaction with
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

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 include/uapi/linux/firewire-cdev.h | 53 ++++++++++++++++++++++++++++--
 1 file changed, 51 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
index 621ee56d11b5..827b226eabb1 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -46,6 +46,9 @@
 #define FW_CDEV_EVENT_PHY_PACKET_RECEIVED		0x08
 #define FW_CDEV_EVENT_ISO_INTERRUPT_MULTICHANNEL	0x09
 
+/* available since kernel version 6.3 */
+#define FW_CDEV_EVENT_REQUEST3				0x0a
+
 /**
  * struct fw_cdev_event_common - Common part of all fw_cdev_event_* types
  * @closure:	For arbitrary use by userspace
@@ -159,6 +162,38 @@ struct fw_cdev_event_request {
  * @length:	Data length, i.e. the request's payload size in bytes
  * @data:	Incoming data, if any
  *
+ * This event is sent instead of &fw_cdev_event_request3 if the kernel or the client implements
+ * ABI version <= 5. It has the lack of time stamp field comparing to &fw_cdev_event_request3.
+ */
+struct fw_cdev_event_request2 {
+	__u64 closure;
+	__u32 type;
+	__u32 tcode;
+	__u64 offset;
+	__u32 source_node_id;
+	__u32 destination_node_id;
+	__u32 card;
+	__u32 generation;
+	__u32 handle;
+	__u32 length;
+	__u32 data[];
+};
+
+/**
+ * struct fw_cdev_event_request3 - Sent on incoming request to an address region
+ * @closure:	See &fw_cdev_event_common; set by %FW_CDEV_IOC_ALLOCATE ioctl
+ * @type:	See &fw_cdev_event_common; always %FW_CDEV_EVENT_REQUEST2
+ * @tcode:	Transaction code of the incoming request
+ * @offset:	The offset into the 48-bit per-node address space
+ * @source_node_id: Sender node ID
+ * @destination_node_id: Destination node ID
+ * @card:	The index of the card from which the request came
+ * @generation:	Bus generation in which the request is valid
+ * @handle:	Reference to the kernel-side pending request
+ * @length:	Data length, i.e. the request's payload size in bytes
+ * @tstamp:	The time stamp of isochronous cycle at which the request arrived.
+ * @data:	Incoming data, if any
+ *
  * This event is sent when the stack receives an incoming request to an address
  * region registered using the %FW_CDEV_IOC_ALLOCATE ioctl.  The request is
  * guaranteed to be completely contained in the specified region.  Userspace is
@@ -191,10 +226,14 @@ struct fw_cdev_event_request {
  * sent.
  *
  * If the client subsequently needs to initiate requests to the sender node of
- * an &fw_cdev_event_request2, it needs to use a device file with matching
+ * an &fw_cdev_event_request3, it needs to use a device file with matching
  * card index, node ID, and generation for outbound requests.
+ *
+ * @tstamp is isochronous cycle at which the request arrived. It is 16 bit integer value and the
+ * higher 3 bits expresses three low order bits of second field in the format of CYCLE_TIME
+ * register and the rest 13 bits expresses cycle field.
  */
-struct fw_cdev_event_request2 {
+struct fw_cdev_event_request3 {
 	__u64 closure;
 	__u32 type;
 	__u32 tcode;
@@ -205,6 +244,12 @@ struct fw_cdev_event_request2 {
 	__u32 generation;
 	__u32 handle;
 	__u32 length;
+	__u32 tstamp;
+	/*
+	 * Padding to keep the size of structure as multiples of 8 in various architectures since
+	 * 4 byte alignment is used for 8 byte of object type in System V ABI for i386 architecture.
+	 */
+	__u32 padding;
 	__u32 data[];
 };
 
@@ -375,6 +420,8 @@ struct fw_cdev_event_phy_packet {
  *				%FW_CDEV_EVENT_PHY_PACKET_SENT or
  *				%FW_CDEV_EVENT_PHY_PACKET_RECEIVED
  *
+ * @request3:		Valid if @common.type == %FW_CDEV_EVENT_REQUEST3
+ *
  * Convenience union for userspace use.  Events could be read(2) into an
  * appropriately aligned char buffer and then cast to this union for further
  * processing.  Note that for a request, response or iso_interrupt event,
@@ -393,6 +440,7 @@ union fw_cdev_event {
 	struct fw_cdev_event_iso_interrupt_mc	iso_interrupt_mc;	/* added in 2.6.36 */
 	struct fw_cdev_event_iso_resource	iso_resource;		/* added in 2.6.30 */
 	struct fw_cdev_event_phy_packet		phy_packet;		/* added in 2.6.36 */
+	struct fw_cdev_event_request3		request3;		/* added in 6.3 */
 };
 
 /* available since kernel version 2.6.22 */
@@ -458,6 +506,7 @@ union fw_cdev_event {
  *                 avoid dropping data
  *               - added %FW_CDEV_IOC_FLUSH_ISO
  *  6  (6.3)     - added some event for subactions of asynchronous transaction with time stamp
+ *                   - %FW_CDEV_EVENT_REQUEST3
  */
 
 /**
-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
