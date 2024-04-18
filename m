Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DBC8A95E7
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:23:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxNzT-0005eS-Kq;
	Thu, 18 Apr 2024 09:23:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzH-0005cs-VC
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DgVOO4gkzo7BMM1oFmZX8/8L34/igUNIkQzx5ftmcfo=; b=agjiNy2mqJDEpLy7xiGzPhHVfr
 Xc8CyriwoSUYI2CaV4EuR+iyNpV5aaEDDBJt4yPPeUc3dbHUDUfdvTIVr4l3J/hBvruS10Vufnfrt
 2VZKbX1LFyNdcWA/j2yZc6H2rboMmJi6hAzZLY3SOC371dOU9hCYZAG+tzwGZgC9ZeKs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DgVOO4gkzo7BMM1oFmZX8/8L34/igUNIkQzx5ftmcfo=; b=ZzoE04KhnSnIRGxBL5V31fci9S
 Pxrahffm4QnQYgzcrZCzAgLej58d/nEhTHxFIPdxFS0vxsTQLgvVF+6i76aAuKpAtVqeCVdJssATr
 czfR1fq4+WoHRppDmYUJRVwKDOArAWWK4HvltVykXB0Jjw1ySAoD5agCAtdLLic7D/KA=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzH-0001Po-Tj for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:24 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 3138011400A9;
 Thu, 18 Apr 2024 05:23:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 18 Apr 2024 05:23:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713432193; x=
 1713518593; bh=DgVOO4gkzo7BMM1oFmZX8/8L34/igUNIkQzx5ftmcfo=; b=F
 VFsBQeB6ZQaHU673x+hn8TaGJt53D/1Vxi+3gU1/qb6tjgqAwgrBTLlFJDLImdwu
 bAzzlh3+oP2g68hW+noydkfIlbseVJ1AEXer2TovTr5LN56YtPLalLykTtEA+wAv
 PlPjf2jURG5lHzv2eSSQ82HPLAvXPMnWLOC7hC8DtWk6lGeEiLnyWCkOYemRu3xD
 UfKSKwpFI37cYnHNxm1fnDfEmWxA5EnICRCQJJmNTTZQ+h+/KqhE095CCQF9s6e1
 aydkMNMQWD8zCKliM5/98zAehGgYjGzbmSAuIIivDQlb5f/TmlYS5YdOUrfKMms2
 3sEVt6xADTywY6UmfvX1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713432193; x=
 1713518593; bh=DgVOO4gkzo7BMM1oFmZX8/8L34/igUNIkQzx5ftmcfo=; b=a
 2zP58PE0X2ui611h8bdp4nYG3nCce5BwCO5hDsp3ikS8alTu1nYRKQmxlX3bQXoL
 1jdqvLUy+0H4rXLFO/lYJNUPz/OeUZbdDsW6CfQ6NS66rmHBKlcX3Wl8g4PvMEMG
 dE+BWltqW0RrFWVsjUOOQIRsRv+qPCJLFMYYTB4xu/jxjuxviHJAMEU0B4MNEw0j
 Zi48/CWQg7m6FOBdXTT7K9YT18W2McSS82LVOWRjeK/oo3XuL7GgElBIurnfUSnp
 ct1TLRMxhfPYkst8ZUHe5MczqdrOOwHZQolNncsDeFC2ZoWc98Y+0AzwIxwb9C9r
 iDt0Kz+v1i2qAwXqE0nZg==
X-ME-Sender: <xms:gOYgZu0MGDSnvORIZKOGhS9vVf2R03zU4Ne_pfkS6miA_a4mQzupNA>
 <xme:gOYgZhGLTILtHdFcdYkMJMi0MVqXehKew9HJ9P4OWHW4ZD2INg54h2zqLccFHJGNE
 7frJIsyLSsxH1qrq5E>
X-ME-Received: <xmr:gOYgZm7UlCjp1wmWyb8uxhzVRcTVVATe_cBHA7q3a0GlZ9nemUZwLNsaEH7GPdMQavtjEhmvy6sXDQ-JxKmxJVPfNxsnwlqLkkskagay2vLjoA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:geYgZv2yhHyisEDsY8O5T4DA9mX5Np7Fz-1gaUERNPl1xyiNBt1Pbw>
 <xmx:geYgZhFIz-AEt14D1SFXHfeh2LPUGAOuykU3IOCLkrCEPTMVw3h3zg>
 <xmx:geYgZo-Rk6HYc6OBbrPwoSnpzzBdGvBZdbvZVRq5roYkxugREy3zeA>
 <xmx:geYgZmkFDQXckMFfMZ9p0iuuJKZatLCXInbE_35NJOpEZg0LdL9XAw>
 <xmx:geYgZmTmum4sGwasQz6aCC3KI6fz-uOsqTOnv-beu1JZJ88O5PnoCC4F>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:12 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 04/13] firewire: ohci: replace hard-coded values with
 inline functions for asynchronous packet header
Date: Thu, 18 Apr 2024 18:22:54 +0900
Message-ID: <20240418092303.19725-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418092303.19725-4-o-takashi@sakamocchi.jp>
References: <20240418092303.19725-1-o-takashi@sakamocchi.jp>
 <20240418092303.19725-2-o-takashi@sakamocchi.jp>
 <20240418092303.19725-3-o-takashi@sakamocchi.jp>
 <20240418092303.19725-4-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This commit replaces the hard-coded values with the common
 inline functions to serialize and deserialize the header of asynchronous
 packet. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/ohci.c
 | 30 +++++++++++++++ 1 file changed, 15 insertions(+), 15 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rxNzH-0001Po-Tj
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

This commit replaces the hard-coded values with the common inline functions
to serialize and deserialize the header of asynchronous packet.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 5254cf5c2e58..4666d941a2ae 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -517,14 +517,14 @@ static const char *tcodes[] = {
 static void log_ar_at_event(struct fw_ohci *ohci,
 			    char dir, int speed, u32 *header, int evt)
 {
-	int tcode = header[0] >> 4 & 0xf;
+	int tcode = async_header_get_tcode(header);
 	char specific[12];
 
 	if (likely(!(param_debug & OHCI_PARAM_DEBUG_AT_AR)))
 		return;
 
 	if (unlikely(evt >= ARRAY_SIZE(evts)))
-			evt = 0x1f;
+		evt = 0x1f;
 
 	if (evt == OHCI1394_evt_bus_reset) {
 		ohci_notice(ohci, "A%c evt_bus_reset, generation %d\n",
@@ -539,7 +539,8 @@ static void log_ar_at_event(struct fw_ohci *ohci,
 		break;
 	case 0x1: case 0x5: case 0x7: case 0x9: case 0xb:
 		snprintf(specific, sizeof(specific), " %x,%x",
-			 header[3] >> 16, header[3] & 0xffff);
+			 async_header_get_data_length(header),
+			 async_header_get_extended_tcode(header));
 		break;
 	default:
 		specific[0] = '\0';
@@ -556,17 +557,17 @@ static void log_ar_at_event(struct fw_ohci *ohci,
 		break;
 	case 0x0: case 0x1: case 0x4: case 0x5: case 0x9:
 		ohci_notice(ohci,
-			    "A%c spd %x tl %02x, %04x -> %04x, %s, %s, %04x%08x%s\n",
-			    dir, speed, header[0] >> 10 & 0x3f,
-			    header[1] >> 16, header[0] >> 16, evts[evt],
-			    tcodes[tcode], header[1] & 0xffff, header[2], specific);
+			    "A%c spd %x tl %02x, %04x -> %04x, %s, %s, %012llx%s\n",
+			    dir, speed, async_header_get_tlabel(header),
+			    async_header_get_source(header), async_header_get_destination(header),
+			    evts[evt], tcodes[tcode], async_header_get_offset(header), specific);
 		break;
 	default:
 		ohci_notice(ohci,
 			    "A%c spd %x tl %02x, %04x -> %04x, %s, %s%s\n",
-			    dir, speed, header[0] >> 10 & 0x3f,
-			    header[1] >> 16, header[0] >> 16, evts[evt],
-			    tcodes[tcode], specific);
+			    dir, speed, async_header_get_tlabel(header),
+			    async_header_get_source(header), async_header_get_destination(header),
+			    evts[evt], tcodes[tcode], specific);
 	}
 }
 
@@ -854,7 +855,7 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 	p.header[1] = cond_le32_to_cpu(buffer[1]);
 	p.header[2] = cond_le32_to_cpu(buffer[2]);
 
-	tcode = (p.header[0] >> 4) & 0x0f;
+	tcode = async_header_get_tcode(p.header);
 	switch (tcode) {
 	case TCODE_WRITE_QUADLET_REQUEST:
 	case TCODE_READ_QUADLET_RESPONSE:
@@ -875,7 +876,7 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 	case TCODE_LOCK_RESPONSE:
 		p.header[3] = cond_le32_to_cpu(buffer[3]);
 		p.header_length = 16;
-		p.payload_length = p.header[3] >> 16;
+		p.payload_length = async_header_get_data_length(p.header);
 		if (p.payload_length > MAX_ASYNC_PAYLOAD) {
 			ar_context_abort(ctx, "invalid packet length");
 			return NULL;
@@ -912,8 +913,7 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 	 * Several controllers, notably from NEC and VIA, forget to
 	 * write ack_complete status at PHY packet reception.
 	 */
-	if (evt == OHCI1394_evt_no_status &&
-	    (p.header[0] & 0xff) == (OHCI1394_phy_tcode << 4))
+	if (evt == OHCI1394_evt_no_status && async_header_get_tcode(p.header) == OHCI1394_phy_tcode)
 		p.ack = ACK_COMPLETE;
 
 	/*
@@ -1354,7 +1354,7 @@ static int at_context_queue_packet(struct context *ctx,
 	 * accordingly.
 	 */
 
-	tcode = (packet->header[0] >> 4) & 0x0f;
+	tcode = async_header_get_tcode(packet->header);
 	header = (__le32 *) &d[1];
 	switch (tcode) {
 	case TCODE_WRITE_QUADLET_REQUEST:
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
