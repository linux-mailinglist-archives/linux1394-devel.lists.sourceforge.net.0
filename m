Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDA58FDAEE
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qm-0008Hs-34;
	Wed, 05 Jun 2024 23:52:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0Qg-0008HR-IB
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AB80wdRifDotWyffJuTSQTTcEEsAJXA4WZpWq0bUy8E=; b=fGwPmgGbec7jk0POf3sFhhrfBi
 wI0ERhad9Us1ogSKqzlMqwqKi6esq/3x4qjP3AFGWWBXt7qE6SDTnvn/klScUqYi6RKLdJQkh+8If
 cDC7k3TtfZp4PntWr8GeiBKGqN8SBwZPep6eNlObhXobDcNQigMNfPgbValBjhmNS5Mg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AB80wdRifDotWyffJuTSQTTcEEsAJXA4WZpWq0bUy8E=; b=OSlucvEJQaoHXc30RgZNJ2UbsA
 tqH38UANSN43EN6+y/v+TcPRK/v6j+LkGe/pW0yn48HP9IZvzithL2WbR/DcZIghx2JmT5McZhPX7
 LvOr1GHYxtAoimHorCsAQj7XzRVcJxdepNBdMSaDE330aKNdS5lFkXeZAqNosvUGAd5M=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0Qg-0004ZN-TT for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:30 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.west.internal (Postfix) with ESMTP id 9731C1C000FB;
 Wed,  5 Jun 2024 19:52:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 05 Jun 2024 19:52:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717631539; x=
 1717717939; bh=AB80wdRifDotWyffJuTSQTTcEEsAJXA4WZpWq0bUy8E=; b=e
 OSSw3/RpFGMk4leo2UEieIUx2A3danNKIDOUPtq8OSI4N2pGkTAw7WXRtS0isezo
 bpTixwOo1VuF1Iv/mXn9MfcLT5ke3lAVCvGrZFB06m85BFFbLwh7JBJ6hspIay/7
 L1Jgy1AMVkVIeVf0B+9Cj8rq3nxFdFga/5GicrfK/rxs+2Nzj9Z/4xczpjA3LV4y
 zX8Be6ZlBXgdf1+hFqorhYnCeBTvihgwBlMR0mTQRURDrK5TozZQBJps1LdKV+hO
 yOigwBQHFIOQZwaEmGTyjas85JMcJPvQbC048M4Wk9Mqq4MYwDI4YG6hIkdlmmw6
 JX9tBzOL2MT7UdywLYRdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717631539; x=
 1717717939; bh=AB80wdRifDotWyffJuTSQTTcEEsAJXA4WZpWq0bUy8E=; b=Z
 2L7dX6F732FA7CZWTNDbwSkFoEQXYHgYnPHhLP8VvfjUxzVrbLbs9ctWM7rtFtnu
 tmN85I4A46F5yiwmj+qM/fa9IYlq/ndvPL2WTFzy3IUrCloLaazWylMqNAyQ9NeE
 +IwFpydXfqZnqnaYQtessBsycjW5tHtSNPVTYJQL6kh33+LxgUNzwA4NHT+eX6qC
 ZcXlMN6cdHRMCeh6NC/6RfzLHJRvZezuGvCiUi/ZRw8d3yQM4fzPP7i3e+UW6Ska
 LBVpmgUhmtREEzrdi27Zqux+cfzxuUcTq7MP13JmV512MCJq3O7FqA1u8qT7hCCP
 VGcEpj+GuJa0GPJV6rCtg==
X-ME-Sender: <xms:M_pgZl7X8HfI1dvjGtlmdg0U-4Yai-t1i7tMcHOml9sY3g1txRE1zw>
 <xme:M_pgZi5DqMlRyx-KAh-IkA3CnCXI-oPlyJxXwowgLxdv2pa1v1iMtqrUb9WBlhjqK
 80zQ5adebBHavTNhvo>
X-ME-Received: <xmr:M_pgZsdGyNLYb_LlyFM-27FBhw5ssVzT4bDFVZjN_wPncMV3bCOiWHnjj0dJqhPb5zz6aZZmiamgzG-MeDwOFWiAEp4gJoDE6cl0p6u0C8v8cg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:M_pgZuJYNMWm1xw6mOjOSjA8bsiwKGB8IKIdfLcsTpBAZQx9o1bLdg>
 <xmx:M_pgZpKowCdfyQFGlmb9oH_1nR4IIhRcqO2LfIkMpuuX3c2PBjrALg>
 <xmx:M_pgZnyO-YfnJN9TLwK4sfRLd0J4_Uc6NG5nD6bTe2Hsh1rGImCXZg>
 <xmx:M_pgZlKkMnDtMkMaCRwN7npgNdUo2-4joitMLk85Y0GK9ieqShdwnw>
 <xmx:M_pgZgV2bZAynlzrTUYn8tNCuZMS_GxFkTcg1vF7xzzM5MNNkVOJa_gB>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:52:18 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 09/11] firewire: ohci: use helper inline functions to
 serialize/deserialize self ID packet
Date: Thu,  6 Jun 2024 08:51:53 +0900
Message-ID: <20240605235155.116468-10-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
References: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This commit replaces the existing implementation with the
 helper functions for self ID packet. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 69 +++++++++++++++++++++++++++ 1 file changed,
 45 insertions(+), 24 deletions(-) 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.145 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sF0Qg-0004ZN-TT
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

This commit replaces the existing implementation with the helper
functions for self ID packet.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 69 +++++++++++++++++++++++++++--------------
 1 file changed, 45 insertions(+), 24 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 342407d8bc9b..1f6097a6366c 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -477,7 +477,7 @@ static void log_selfids(struct fw_ohci *ohci, int generation, int self_id_count)
 		ohci_notice(ohci,
 		    "selfID 0: %08x, phy %d [%c%c%c] %s gc=%d %s %s%s%s\n",
 		    *s,
-		    *s >> 24 & 63,
+		    phy_packet_self_id_get_phy_id(*s),
 		    port[self_id_sequence_get_port_status(s, quadlet_count, 0)],
 		    port[self_id_sequence_get_port_status(s, quadlet_count, 1)],
 		    port[self_id_sequence_get_port_status(s, quadlet_count, 2)],
@@ -490,7 +490,7 @@ static void log_selfids(struct fw_ohci *ohci, int generation, int self_id_count)
 			ohci_notice(ohci,
 			    "selfID n: %08x, phy %d [%c%c%c%c%c%c%c%c]\n",
 			    s[i],
-			    s[i] >> 24 & 63,
+			    phy_packet_self_id_get_phy_id(s[i]),
 			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index)],
 			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index + 1)],
 			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index + 2)],
@@ -1846,7 +1846,8 @@ static u32 update_bus_time(struct fw_ohci *ohci)
 	return ohci->bus_time | cycle_time_seconds;
 }
 
-static int get_status_for_port(struct fw_ohci *ohci, int port_index)
+static int get_status_for_port(struct fw_ohci *ohci, int port_index,
+			       enum phy_packet_self_id_port_status *status)
 {
 	int reg;
 
@@ -1860,33 +1861,44 @@ static int get_status_for_port(struct fw_ohci *ohci, int port_index)
 
 	switch (reg & 0x0f) {
 	case 0x06:
-		return 2;	/* is child node (connected to parent node) */
+		// is child node (connected to parent node)
+		*status = PHY_PACKET_SELF_ID_PORT_STATUS_PARENT;
+		break;
 	case 0x0e:
-		return 3;	/* is parent node (connected to child node) */
+		// is parent node (connected to child node)
+		*status = PHY_PACKET_SELF_ID_PORT_STATUS_CHILD;
+		break;
+	default:
+		// not connected
+		*status = PHY_PACKET_SELF_ID_PORT_STATUS_NCONN;
+		break;
 	}
-	return 1;		/* not connected */
+
+	return 0;
 }
 
 static int get_self_id_pos(struct fw_ohci *ohci, u32 self_id,
 	int self_id_count)
 {
+	unsigned int left_phy_id = phy_packet_self_id_get_phy_id(self_id);
 	int i;
-	u32 entry;
 
 	for (i = 0; i < self_id_count; i++) {
-		entry = ohci->self_id_buffer[i];
-		if ((self_id & 0xff000000) == (entry & 0xff000000))
+		u32 entry = ohci->self_id_buffer[i];
+		unsigned int right_phy_id = phy_packet_self_id_get_phy_id(entry);
+
+		if (left_phy_id == right_phy_id)
 			return -1;
-		if ((self_id & 0xff000000) < (entry & 0xff000000))
+		if (left_phy_id < right_phy_id)
 			return i;
 	}
 	return i;
 }
 
-static int initiated_reset(struct fw_ohci *ohci)
+static bool initiated_reset(struct fw_ohci *ohci)
 {
 	int reg;
-	int ret = 0;
+	int ret = false;
 
 	mutex_lock(&ohci->phy_reg_mutex);
 	reg = write_phy_reg(ohci, 7, 0xe0); /* Select page 7 */
@@ -1899,7 +1911,7 @@ static int initiated_reset(struct fw_ohci *ohci)
 			if (reg >= 0) {
 				if ((reg & 0x08) == 0x08) {
 					/* bit 3 indicates "initiated reset" */
-					ret = 0x2;
+					ret = true;
 				}
 			}
 		}
@@ -1915,9 +1927,14 @@ static int initiated_reset(struct fw_ohci *ohci)
  */
 static int find_and_insert_self_id(struct fw_ohci *ohci, int self_id_count)
 {
-	int reg, i, pos, status;
-	/* link active 1, speed 3, bridge 0, contender 1, more packets 0 */
-	u32 self_id = 0x8040c800;
+	int reg, i, pos;
+	u32 self_id = 0;
+
+	// link active 1, speed 3, bridge 0, contender 1, more packets 0.
+	phy_packet_set_packet_identifier(&self_id, PHY_PACKET_PACKET_IDENTIFIER_SELF_ID);
+	phy_packet_self_id_zero_set_link_active(&self_id, true);
+	phy_packet_self_id_zero_set_scode(&self_id, SCODE_800);
+	phy_packet_self_id_zero_set_contender(&self_id, true);
 
 	reg = reg_read(ohci, OHCI1394_NodeID);
 	if (!(reg & OHCI1394_NodeID_idValid)) {
@@ -1925,26 +1942,30 @@ static int find_and_insert_self_id(struct fw_ohci *ohci, int self_id_count)
 			    "node ID not valid, new bus reset in progress\n");
 		return -EBUSY;
 	}
-	self_id |= ((reg & 0x3f) << 24); /* phy ID */
+	phy_packet_self_id_set_phy_id(&self_id, reg & 0x3f);
 
 	reg = ohci_read_phy_reg(&ohci->card, 4);
 	if (reg < 0)
 		return reg;
-	self_id |= ((reg & 0x07) << 8); /* power class */
+	phy_packet_self_id_zero_set_power_class(&self_id, reg & 0x07);
 
 	reg = ohci_read_phy_reg(&ohci->card, 1);
 	if (reg < 0)
 		return reg;
-	self_id |= ((reg & 0x3f) << 16); /* gap count */
+	phy_packet_self_id_zero_set_gap_count(&self_id, reg & 0x3f);
 
 	for (i = 0; i < 3; i++) {
-		status = get_status_for_port(ohci, i);
-		if (status < 0)
-			return status;
-		self_id |= ((status & 0x3) << (6 - (i * 2)));
+		enum phy_packet_self_id_port_status status;
+		int err;
+
+		err = get_status_for_port(ohci, i, &status);
+		if (err < 0)
+			return err;
+
+		self_id_sequence_set_port_status(&self_id, 1, i, status);
 	}
 
-	self_id |= initiated_reset(ohci);
+	phy_packet_self_id_zero_set_initiated_reset(&self_id, initiated_reset(ohci));
 
 	pos = get_self_id_pos(ohci, self_id, self_id_count);
 	if (pos >= 0) {
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
