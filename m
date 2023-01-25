Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C636767B233
	for <lists+linux1394-devel@lfdr.de>; Wed, 25 Jan 2023 13:03:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pKeV4-0002Bo-HX;
	Wed, 25 Jan 2023 12:03:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pKeV2-0002B3-JL
 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=19vVTUmVz4c8yNVs+anY4mvaR+1Dv/o34ILhLMx+310=; b=ELOVSsmQ84rDhGjYhql8KJuD9J
 yfER1gToaLkSfMGRwLWbyXfAOb8mQ92VkrmAW52U4SjbJDtS5EBZfkoQuPjarTQFrtGzkoDpmSv1h
 eIQgZd6ckYpl8gLVicvw1cRQzn/RsiQTw7wJYHjnCw0LKCQ/F7aDtu5nXrK8iEC42Ya4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=19vVTUmVz4c8yNVs+anY4mvaR+1Dv/o34ILhLMx+310=; b=Tq13yRV/w9f/0Vpfs0ZWa+RWBZ
 FVidmgBKPhP+OynIgGwuWVN6hXr3wuzknkKCwPs9bXU+1znJAWICi5fFIWvAaS+bALKBDxP+0kk6v
 EWixOTmof91y5Z5qGO54BJW8I0eDVN7rE7Pn0pZfKIE7btP6NASIe977j9Ajwf1qSkdk=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKeV0-00FITr-Vm for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 763D25C01B4;
 Wed, 25 Jan 2023 07:03:17 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 25 Jan 2023 07:03:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1674648197; x=
 1674734597; bh=19vVTUmVz4c8yNVs+anY4mvaR+1Dv/o34ILhLMx+310=; b=f
 JxisbbAZhjhg8HRy1JI30dzwszF78Liq9d14jvD2a/tIYaAk7f4fycS/skXObPbY
 d7X7OpNqo3lHPIqKES9XpA8VNBOAbpGI3Q+tpQmJde0Y/b0ZI91L1KNtOUSNrdsz
 7ZMWO+v2eQ/f4aFboO5weXuO8SYfIKbzjPgYvAgkU6IzCdW+yyAPNb6EwbRMI4Ag
 28nIhGBfKTlv7SU7ISYW+ZwzOsykPtUFrxXX2fji8FNdqmZphFLq/28AJbR18oJN
 LX2uHf8AotLYK8ij0pEAjft/J3GHwZNkFkXAGw9u+z2X/2e99sgvuKSoZW0jQbGR
 md2tWDkfimmxdpNFJ7joQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1674648197; x=1674734597; bh=19vVTUmVz4c8y
 NVs+anY4mvaR+1Dv/o34ILhLMx+310=; b=QPkevexRXdiUmKoFeyKWAJdRx5RYo
 Nkp73ntxZOuYV+MmRpiiknKzF/wG2JyKs8KVWhkHJOa0LzdAmFk9EJgvrj1Kimom
 cXQaHaDhF7SaFn3KGlbrIt4tqA7k04mCihZ5y1NyCOgu2Mw2hPU5rgdBxi8C8zta
 CMUYib5OmzN7F8q6KyWSSwiaVc/S07whcISQVhqTlVfAAiHcLEtgMuw97H67/rQZ
 J0ytlbOiIYh8oli53zNp1PUq4P0TgOa3vnprOEiBpNRlRcxq5mMsyQbIkMJLixzA
 UuLxH94uwXpMw/Ywdv76mZv1wvORFlv827n29k5ANyN+3wRTx9DK5kRVg==
X-ME-Sender: <xms:hRrRY5jHw6LuDsFIlsfh79e_BQesK4Asdzz6OZSaANRMsZ-MpZ2E8g>
 <xme:hRrRY-CnxEqAkl0yCnFytAQd6Lvn3d7mQpBFqui-3WkDTaPoumq7MtQXUsms9vZD9
 7qFe_IBxIYVUFFMUrg>
X-ME-Received: <xmr:hRrRY5ESb362xN3fA3YHqle_UzK-eDJtwJu09_vbEEwLOlTEIS22kU8Y-ugoFUvtEhZ3CS5uB9SD40c_GlrYvMqKw-vffoEUSbmfBAsPZfVoHLdiHjBYBPQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:hRrRY-SZiMCix1EbtZ39FqP5Ty5i85DNVRt7vsAkVLoUjpXTvczTPQ>
 <xmx:hRrRY2wi4IZ_5J4iUbZktv2uN8czzFyrq8mbPgbsmnNSm-IlrZscww>
 <xmx:hRrRY05M0rDmeZyDFr4zx_xUBtTtYkHZ2ViGqtXili9kYt4V6nObqQ>
 <xmx:hRrRYx-RrGI17xEc3H0r9acKzeGTJi8pLpfwvKiL9RPUAwbzoHZrnQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jan 2023 07:03:16 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 07/11] firewire: cdev: add new event to notify response
 subaction with time stamp
Date: Wed, 25 Jan 2023 21:02:57 +0900
Message-Id: <20230125120301.51585-8-o-takashi@sakamocchi.jp>
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
 Content preview: This commit adds new event to notify event of response
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
X-Headers-End: 1pKeV0-00FITr-Vm
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

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 include/uapi/linux/firewire-cdev.h | 59 +++++++++++++++++++++++++-----
 1 file changed, 49 insertions(+), 10 deletions(-)

diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
index 827b226eabb1..2bd6ab023fc4 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -48,6 +48,7 @@
 
 /* available since kernel version 6.3 */
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
 	struct fw_cdev_event_request3		request3;		/* added in 6.3 */
+	struct fw_cdev_event_response2		response2;		/* added in 6.3 */
 };
 
 /* available since kernel version 2.6.22 */
@@ -507,6 +546,7 @@ union fw_cdev_event {
  *               - added %FW_CDEV_IOC_FLUSH_ISO
  *  6  (6.3)     - added some event for subactions of asynchronous transaction with time stamp
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
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
