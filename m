Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DFA8B4A66
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Apr 2024 09:14:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s0yjn-0000Oo-Qk;
	Sun, 28 Apr 2024 07:14:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s0yjk-0000OU-JO
 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=isiOLW8iXZUka2YMXMuAhM8Z+3FuJbFnChslJD7oRko=; b=JNY8NfXOR6nzr8g9iWqL4EIwcY
 h822ag8XkgXed8Y0R6p+EybpYAmcKo2l9WFrcCDzLIgaIqWPNJE7ysOQXr7aGQ20VTKYEELN59SU7
 eAxjOFT1Ah/Z9blMPScKs+ZN1LdlgwDSrv/ltYbscSHquq+4cJ4T4yejWkNWXlZ4RsMs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=isiOLW8iXZUka2YMXMuAhM8Z+3FuJbFnChslJD7oRko=; b=fj7Y+T1MmGq+FI6ap6r4pH/DNt
 eqz1SG3l3AOmeDQy6fwN/mRc/0l7K6ntGodInJxfOLVqtwoC9Yhv5TdRAANMU7iEYD98im4leEUW0
 jNesX0hfZmyGdJi9pWJ1In0KkLwjCmLPB8+IfgdUtdDlHa85xSLDfM7KOYJV2zonhodQ=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s0yjj-0000HW-Px for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:12 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.west.internal (Postfix) with ESMTP id 46D101C00119;
 Sun, 28 Apr 2024 03:14:01 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 28 Apr 2024 03:14:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714288440; x=
 1714374840; bh=isiOLW8iXZUka2YMXMuAhM8Z+3FuJbFnChslJD7oRko=; b=T
 Zc0K+nnONe/Cp4604VaDeB2eutwG11jXL0d0CyyxGMezTUcnw2Q8rEbi+2VMdfvO
 vQWS7Zg3LgC7Cm+EMXV+Yd2HMaNwYaxbPk7IARTvNE28C4ypbpblzR1ltXoJrXYV
 ibK9GbjxZ65aMXg//F0+5DyWnj/4gZ7kiaBpMAZLAeabGAI/bpWHKP12wo2n1jQz
 r1mJ7Jjcc84MivsXe8cRwK7j0LdbYPxKrE2qW22+2BsLrPqDYHlRylLDnBS/4GCz
 SX96s1KaTEHo9+Opn3c78HJEZiFGr3AZ/c33K9ODqU+FA/uHa+p7DlBbqBt1cH3L
 JmnRGMBwv42oqhsss81PQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714288440; x=
 1714374840; bh=isiOLW8iXZUka2YMXMuAhM8Z+3FuJbFnChslJD7oRko=; b=h
 /pETN+6lPM4sIli19cr4Qj+maW3a9buiOIYwcFjqVzRuNPkaD+dDHvCTenpwzc5f
 8zVBQTqNtoOzXU1/GNLsMgYGauwkFc1wBH//Dt4zLtPMQ9If2EC5oBxyojY0DLib
 VZTFOR8nLMWvRwXis1Q/kQI887LvkgbDz6avZyp+NFylROqTjFd0L6OIPyUpphYZ
 mUBROQxMTiWEgzDkbuOxca8Z7wFBsuZByV4iy9h25nvoXqhJZvnuXb2EabvI1jeO
 DSIOIxTqMDaxG0xJR6tQyfAVw5LG3sUgvBLPq9/+ZvIDUAJdeFFbxgqTtdev9ZpW
 kwNXqxrFGWdPT5dH0CUbA==
X-ME-Sender: <xms:OPctZnKPPaO55fEtPZyfKmHx-3vZ86EULqssWNriip4DoVjoi-PR1w>
 <xme:OPctZrKbJDEya3o_7aiEArQ-zduDRKO5brJunZLvQP53MGvLSTNUyTJV5UVSO9grB
 YhTWvNb2LJMg3dvdsA>
X-ME-Received: <xmr:OPctZvuO8KuwvOF3bcy7Y8b2LNurD3684pCRPlLjBoeUAG76zUMn-4SKROylauz7JItdO5i-Znb2U2uxb0_Ft-ete62wErAZ4_XAcGc71IG9lA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:OPctZgbPKRSUwutae_SozLgefR1LdjIxa_STWMKfuTQfLFTWxsTfTQ>
 <xmx:OPctZuZNmG9UmUqR9LKh3k-9EjIUsHcue6McdbJSQekIoT1z1Z1_Ag>
 <xmx:OPctZkBrxB46uDbs1uOJLn1Z45f_zNZV68cLI1FZr81diZ_Fn4cb5Q>
 <xmx:OPctZsa7mmNtay8vkWgZwK8gIwgzt3b8c7D8Fk5pmfOuKwYLuc0voA>
 <xmx:OPctZtnxDNQTLzJttql-uy_nKqOfrKg5bjLyDhKhhPbrOzf-YCM8Qxjf>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Apr 2024 03:13:59 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/8] firewire: ohci: replace hard-coded values with inline
 functions for asynchronous packet header
Date: Sun, 28 Apr 2024 16:13:42 +0900
Message-ID: <20240428071347.409202-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
References: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
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
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.145 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1s0yjj-0000HW-Px
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
index 5f702f56ac7b..be8ede492ead 100644
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
+	if (evt == OHCI1394_evt_no_status && tcode == OHCI1394_phy_tcode)
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
