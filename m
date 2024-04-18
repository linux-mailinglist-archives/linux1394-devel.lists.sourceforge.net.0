Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DD38A95EC
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:24:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxNzo-0001n9-2Z;
	Thu, 18 Apr 2024 09:23:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzd-0001mf-HX
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OvkJ3JJBdTmm0oyGBN0bERJHPObwKkGyJk/XH2hv2+w=; b=MKcOgsQ+cbSB/wz7T17Jby5qc4
 71gK49WTAIPiRIjoC+e9+aegaAkSkHaoLx9ZqVJFXcfKuU1pNGFYR9BmfAzX2v4AsECGBMiq42QuA
 RCC0pp84mVoV3koTRMN8gIHuD7fMeCTb7xiWGpGS3cyHaoBfFRnfX1S71xl5NRF51cr4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OvkJ3JJBdTmm0oyGBN0bERJHPObwKkGyJk/XH2hv2+w=; b=dpkZLwW3AwGWrjoc5fkf9PIlyV
 wwxXPaWNpaN4jSBSlXuN6SChk6V6CjUB2nms9XW+krhkAW6+1//QkSugDKKONz175O5iustf/K92I
 540nEj/mnuTCKUvOSmZIMp0T+ILZju4wWScmyfno1JT7Khnvt5a5TF0pL+VWWQC9xvS4=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzJ-0001Pt-7z for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:38 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 85F1F114011D;
 Thu, 18 Apr 2024 05:23:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 18 Apr 2024 05:23:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713432194; x=
 1713518594; bh=OvkJ3JJBdTmm0oyGBN0bERJHPObwKkGyJk/XH2hv2+w=; b=c
 tH0zVQ4ZTitLpU+ke2/lTpiDHDXdmoAMYVNGNzTlyRkSyyva+hgHao1T9pwfGvfy
 gSyMwMKFaD8OpoIQvE9tvVfOBshtUtYVyTywiNNlSfe68/xzXqWsT3DL7G4xdWtC
 YTuqEB+EFruLYcASXjA+4hYNmrGhVb8CdE4LS9lLfo2PCG5ryL7OIuVm9Y5FUS1h
 qT8x++ijTEIUwJHtJ2f5u3KWuKS8n9PSrzwi+Ggi0JdXq5ZKJcz+fiLrzfAc41qL
 5/hwiYE1YN5NtWY7COADmHDaXHE9RisfE7YY6uwXLYbhC7lBlbFsPDvfAcOUg/tj
 ZhAx55r4l8IKbysZVeR3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713432194; x=
 1713518594; bh=OvkJ3JJBdTmm0oyGBN0bERJHPObwKkGyJk/XH2hv2+w=; b=Q
 4mf2IQxAxI0eHnPnmAjs0ZebbcUqkdSCcXx9iHUuENbbX4onrSyFuQ5vBWEDOH49
 rjN+xAIoBPjOH41ROBW6toI+kCXTfa4tDOZhgYNxxYuFC0sFTSrBX6budKb1L539
 IGn6ZbDiZN+cbqcaNXr/2enPwlPQz+8TllTMjKDL5xJ2lJj4IBqyasLtyW7xpOVr
 ci4ourhEJfb8/YFx79kEIsAYH+dkq2VzQb05n/obEviDwD5VSOUHY+5dcApRDzS4
 /8IB1ksTeXZTXRTCSYrGNAfEe+EJeQnDHbEmPBic7SnS1yQtFC58T0QwyLenKEvV
 QxVanQr8ZdbOzfAVW2S1w==
X-ME-Sender: <xms:guYgZlT4O1YxXa6pix8PNxVntC6TEu5ezrLQNFlN750He5UL1Xos_w>
 <xme:guYgZuxPCqZrZWXwhtHyE7nfXkhEBzl9Qzd-cacXGKJZdv9jClIK5IFclkmjc4R1Q
 qhKxhetr9pxDMDaFBY>
X-ME-Received: <xmr:guYgZq1nIkO8RIbX-vKyP8WmymTMQ_2P6u-nrK6qyEiwHTXTf6pRkQQ72Ls83W-n5NyAJ-7oG9N9-_bJFIJ5vRXfcUnfsrIuUlJ69_z-X_veIQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:guYgZtD-Kl3_4_9P4s_l1bNtUW2RNe9htlY8lLNPaJw1taecqtCZDA>
 <xmx:guYgZugiQdD4XPkdzLt5zYCniIqPgGBotv8CMHcUVHKg8c7JnnqjIg>
 <xmx:guYgZhrp3g9xMzbkjlqV1VXAL-BYcxTCc_LxfUs2dlDzgumaoxA3wA>
 <xmx:guYgZpgt7OlA5jhNEGYwySEqRw42A-dQHZuTnJLtM5zzlE5e_0qo2w>
 <xmx:guYgZhulZi3O3rh0IHF5a7I1CRB4tz7XAE4cngsOHo8a0ImHUaKnCnTh>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 05/13] firewire: ohci: replace hard-coded values with
 common macros
Date: Thu, 18 Apr 2024 18:22:55 +0900
Message-ID: <20240418092303.19725-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418092303.19725-5-o-takashi@sakamocchi.jp>
References: <20240418092303.19725-1-o-takashi@sakamocchi.jp>
 <20240418092303.19725-2-o-takashi@sakamocchi.jp>
 <20240418092303.19725-3-o-takashi@sakamocchi.jp>
 <20240418092303.19725-4-o-takashi@sakamocchi.jp>
 <20240418092303.19725-5-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: In the helper function for logging in 1394 ohci driver
 includes
 the hard-coded variables for transaction code. They can be replaced with
 the enumerations in UAPI header. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 18 ++++++++++++++---- 1 file changed,
 14 insertions(+), 4 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rxNzJ-0001Pt-7z
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

In the helper function for logging in 1394 ohci driver includes the
hard-coded variables for transaction code. They can be replaced with
the enumerations in UAPI header.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 4666d941a2ae..85223a1c90a1 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -533,11 +533,17 @@ static void log_ar_at_event(struct fw_ohci *ohci,
 	}
 
 	switch (tcode) {
-	case 0x0: case 0x6: case 0x8:
+	case TCODE_WRITE_QUADLET_REQUEST:
+	case TCODE_READ_QUADLET_RESPONSE:
+	case TCODE_CYCLE_START:
 		snprintf(specific, sizeof(specific), " = %08x",
 			 be32_to_cpu((__force __be32)header[3]));
 		break;
-	case 0x1: case 0x5: case 0x7: case 0x9: case 0xb:
+	case TCODE_WRITE_BLOCK_REQUEST:
+	case TCODE_READ_BLOCK_REQUEST:
+	case TCODE_READ_BLOCK_RESPONSE:
+	case TCODE_LOCK_REQUEST:
+	case TCODE_LOCK_RESPONSE:
 		snprintf(specific, sizeof(specific), " %x,%x",
 			 async_header_get_data_length(header),
 			 async_header_get_extended_tcode(header));
@@ -547,7 +553,7 @@ static void log_ar_at_event(struct fw_ohci *ohci,
 	}
 
 	switch (tcode) {
-	case 0xa:
+	case TCODE_STREAM_DATA:
 		ohci_notice(ohci, "A%c %s, %s\n",
 			    dir, evts[evt], tcodes[tcode]);
 		break;
@@ -555,7 +561,11 @@ static void log_ar_at_event(struct fw_ohci *ohci,
 		ohci_notice(ohci, "A%c %s, PHY %08x %08x\n",
 			    dir, evts[evt], header[1], header[2]);
 		break;
-	case 0x0: case 0x1: case 0x4: case 0x5: case 0x9:
+	case TCODE_WRITE_QUADLET_REQUEST:
+	case TCODE_WRITE_BLOCK_REQUEST:
+	case TCODE_READ_QUADLET_REQUEST:
+	case TCODE_READ_BLOCK_REQUEST:
+	case TCODE_LOCK_REQUEST:
 		ohci_notice(ohci,
 			    "A%c spd %x tl %02x, %04x -> %04x, %s, %s, %012llx%s\n",
 			    dir, speed, async_header_get_tlabel(header),
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
