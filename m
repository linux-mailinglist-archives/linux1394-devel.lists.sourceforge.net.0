Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E848B5362
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Apr 2024 10:47:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1MfT-0002Ga-CC;
	Mon, 29 Apr 2024 08:47:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1MfQ-0002G9-QJ
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 08:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AA0D+kue/3xTdnBt87jovrwup14dV6tF3IPu6PUcZ7I=; b=HWXHcTLIjXLI7SxmM2OhR9Iy6Y
 H9dfBu53ubPLp/ZixI/YnEUAFIxAlYfe2lKy/aXcKiIwoYxVNVuMygnYSbE32GM+Nown0y4eqfw+G
 V4z/eFl14xlsKcEsochXvHNbBrfH2E0IL12DfeoROYOkXlZq004s0TjjL4vOUylUoafM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AA0D+kue/3xTdnBt87jovrwup14dV6tF3IPu6PUcZ7I=; b=W
 IQ0CLzK6dyOOue2U39wkaEr5ApyVxLyB7zOgagoY6zDhQOaFU7q87cO74S36Ez+KTBGSM0MhwD8GA
 yGqCl4+IeERpKvAWLQBvnEIV73Ae+/uOzi8ojBo7of4Kwe5TvHWtt8H8Y/019wpxY5O36ShFGq27b
 14nFuPhKKfW213cU=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1MfQ-0007C7-3X for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 08:47:21 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.west.internal (Postfix) with ESMTP id D96DA1C00074;
 Mon, 29 Apr 2024 04:47:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 29 Apr 2024 04:47:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1714380434; x=1714466834; bh=AA0D+kue/3
 xTdnBt87jovrwup14dV6tF3IPu6PUcZ7I=; b=HpaOvqYIUi0nW3i02BK1nDOhLD
 KGkF7skAJ/FeaqHuPiLYlOrKmOmvHRzCuCLZ6ot4EuUXW4pEu+5hUaCnr9PwX1h5
 cKrS78LAE6mUKsc2v4QR47Z78RLZz+b6nsfl9CeeKe3kQrhQzRApTeUfMN4XfsuS
 8IHAmCFF6v2kgtZhki2ocLcIj7PCs33pSDlxljMHzIEnSjuBJVheE1QJUECxmPpx
 abfkSsMZFrAdh0FKgS3LHGg+BUpOUPylrI4CoyuHrUr/dV3arA5OO398eU9L9Wr+
 3KPf3N2LDaw/MIZXc/6uGGHqNq0epqop8PZOiriWoxIDzxSuruDe2u7IG26g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714380434; x=1714466834; bh=AA0D+kue/3xTdnBt87jovrwup14d
 V6tF3IPu6PUcZ7I=; b=Qgv7Ps2BnurNZBL5fC0zArMg36YjWOLZ8VvPW1psFJzL
 GgIY+taa4ll9NMTZ3aWvrZTngdZS3uvN80caPb7+j05+WPNeyqDGwMRKl2sSRFqB
 2HdGi4amL+CUxhq5xVT6Ejx+Y64/2VbC03ngfsJCF324/jbKNd1I90HqlzASkqRH
 s2fdyUgFkX7CcWd7tePXYT9vmDUpxav3+jgmDRDTiIV8W70jz1ErgTl4tM7tDU5f
 DCKfvj69J+tjhdsXjCid8KS/4M09cczsbM74ymioxLJHbI1x2oer0A9qt72/MOhN
 JUC7wByCUq+NPEZC+MAg6Ckmbf+T2Rkqwiwdtf1HIQ==
X-ME-Sender: <xms:kl4vZjbvtmWRdS4fCXHPTcxdUYnmnsajQ68T7pr94XfDvUAkwZnteA>
 <xme:kl4vZiZ6jEudER2yA4xFJhc788wUqswa2n7vk44UNLrwxUJ227oV4C_ABMq5whqJa
 iAvIxEg0PzaNxx70pA>
X-ME-Received: <xmr:kl4vZl9-9uZQJSOob-cXYWbhUYEjEtN_Hd1SwTfN3tvSGqbIkd6vX5veowXtrhoqU96NxrMLV2c2R_de04xQpNUTGb_Lu6YqkMrBakM2-Zgenw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduuddgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:kl4vZpqU9PIahi4zMf7SJOlJAs2N8w2iscuaLKOZ2vT-WMExM6aPsQ>
 <xmx:kl4vZupl4fXxs57KjgGL6fFZA_sVuPnWkG0q4pGXM5Yzb7omK5_NeA>
 <xmx:kl4vZvQ8J5P7j_M1hFDQCRf_L3TP7ttQXU5DUdsdNq6GSwqOozrFCw>
 <xmx:kl4vZmq9BSR7h3tgJB96U8ce6jkJWDUyQIe0pxHLy4S2l7ukbdx_4A>
 <xmx:kl4vZl2G93346UGyZFlLKgNBgcgcSt-dmngdyKfc2u_fq0_Ozb0-YKSO>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 04:47:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: ohci: fulfill timestamp for some local asynchronous
 transaction
Date: Mon, 29 Apr 2024 17:47:08 +0900
Message-ID: <20240429084709.707473-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: 1394 OHCI driver generates packet data for the response
 subaction
 to the request subaction to some local registers. In the case, the driver
 should assign timestamp to them by itself. This commit fulfills the timestamp
 for the subaction. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s1MfQ-0007C7-3X
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

1394 OHCI driver generates packet data for the response subaction to the
request subaction to some local registers. In the case, the driver should
assign timestamp to them by itself.

This commit fulfills the timestamp for the subaction.

Cc: stable@vger.kernel.org
Fixes: dcadfd7f7c74 ("firewire: core: use union for callback of transaction completion")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 38d19410a2be..b9ae0340b8a7 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1556,6 +1556,8 @@ static int handle_at_packet(struct context *context,
 #define HEADER_GET_DATA_LENGTH(q)	(((q) >> 16) & 0xffff)
 #define HEADER_GET_EXTENDED_TCODE(q)	(((q) >> 0) & 0xffff)
 
+static u32 get_cycle_time(struct fw_ohci *ohci);
+
 static void handle_local_rom(struct fw_ohci *ohci,
 			     struct fw_packet *packet, u32 csr)
 {
@@ -1580,6 +1582,8 @@ static void handle_local_rom(struct fw_ohci *ohci,
 				 (void *) ohci->config_rom + i, length);
 	}
 
+	// Timestamping on behalf of the hardware.
+	response.timestamp = cycle_time_to_ohci_tstamp(get_cycle_time(ohci));
 	fw_core_handle_response(&ohci->card, &response);
 }
 
@@ -1628,6 +1632,8 @@ static void handle_local_lock(struct fw_ohci *ohci,
 	fw_fill_response(&response, packet->header, RCODE_BUSY, NULL, 0);
 
  out:
+	// Timestamping on behalf of the hardware.
+	response.timestamp = cycle_time_to_ohci_tstamp(get_cycle_time(ohci));
 	fw_core_handle_response(&ohci->card, &response);
 }
 
@@ -1670,8 +1676,6 @@ static void handle_local_request(struct context *ctx, struct fw_packet *packet)
 	}
 }
 
-static u32 get_cycle_time(struct fw_ohci *ohci);
-
 static void at_context_transmit(struct context *ctx, struct fw_packet *packet)
 {
 	unsigned long flags;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
