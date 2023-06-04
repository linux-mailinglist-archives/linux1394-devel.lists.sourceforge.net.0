Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA9B72153C
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 09:03:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5hli-0007wl-5k;
	Sun, 04 Jun 2023 07:03:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5hlg-0007wd-4h
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 07:03:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FQJ13Aq87tYV6JYGYfyduSzT1CwAmRLXUL1KgqmPHmk=; b=kpmy2BeCG9bTf2pbLRiXGslLD5
 ztGKnwixyOfiIlIXU15yDutbBm3PppNFFtgbe6crx/7/Z58cMO9CtZbVVQZgBJcf3xO/f5NRkFNRi
 EjYXmTFGj+/t+/deY1QflIcX1O7nMTlRIRwJQdV70p301T/8iLljFmMJhjXKgjeVuib4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FQJ13Aq87tYV6JYGYfyduSzT1CwAmRLXUL1KgqmPHmk=; b=O
 MGdvdbTwQd8jvbrOlg5YzkhyfTYSTLDeSYdlsgN4iimDHtd5pxUm5sHI0TvA2aQZ5Tau2bmoX0f/F
 oRzwdzZg6ILN7Eb7w+95ufg5Do7vdRNE9/xZRwMz/+SC2W0NHvyp+V6ebOIId2hxkzEXxtM4Fl/gN
 WIU9t0OF35z8L+oU=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5hlb-00Aecv-Vp for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 07:03:11 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id DD8185C0107;
 Sun,  4 Jun 2023 03:02:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 04 Jun 2023 03:02:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm1; t=1685862179; x=1685948579; bh=FQJ13Aq87t
 YV6JYGYfyduSzT1CwAmRLXUL1KgqmPHmk=; b=W8fqjJIkD11IW5l3MAr6h09/zY
 Cu/f06dNh7+20PCgVp/815GnvWEFY1ORUIYhRheeTGPzUopZvMnmd4KfskXsNs24
 lfnBdl089tV8b1pLfSOw2LUZmrWx+4Xr+a6Piw4RVDCj+qoS3xrxrGruScI8mA+1
 tf6e9l27Hvmn4JCU7G7Cjn24VmoszrHHfliACwGLguaP40Y+LnduYrwrqCVRxMzf
 AHpgIt1Du7vKBPOe9Y1gZEII9Pc3BoQ1tbHwNKEjhbAss4nCF7At3EcBTB10n3EM
 GfNiydiwpUThtjDBfjLOWGaLHBTeHKv6M3UDELM3uCxFfORWqYmiuVU3Lwgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :message-id:mime-version:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1685862179; x=1685948579; bh=FQJ13Aq87tYV6JYGYfyduSzT1CwA
 mRLXUL1KgqmPHmk=; b=uR4KDaQLvqDeWzWdcZO5/gmIzAY1Y4RES76/+999XOPo
 rJBhqZqt54/HkLhKTjm+Y3emySsiH1qs8RZ38Lw+K0sMre4Xp/hWRUEx54Mll+q3
 HIR7AaDuJ0LUFAZsaPwOa0DhoCz90fJR6znxVsF6qgaI6Uuo70U6Qpmevny2TgjE
 q4a+ZMxBfsDAlmvygo1/1bAqKak1mW3G8ZZRgTsGNy3EMwJchl5CFH2gVfeZF5E0
 19E/PewNldCuVKGUPkTt7EZInTmDrXOyezAaLKx6lN1rY6w35aYzLznHz8DDpz/u
 6mI8xhrU9EbrNm+IFc6egjeXegTiyR2uLHzHzzHbWw==
X-ME-Sender: <xms:Izd8ZJRgs7x8KQP_LsS3SvKHlbqr3j7gl1Nm8KzMybd4DEJLEl0LrQ>
 <xme:Izd8ZCwziynRUu1sy9iHs2DrxUSd3qaPiCgIp50_BYsxEiSC_vB7PN4W1ypxxP80g
 JzW8UgJyIm7Z4KlWpM>
X-ME-Received: <xmr:Izd8ZO2pLgx6S43cdIh6yPZsoX2wRuwQDcXgHsFHUeHxzGpvz3599eQLPPhmblfJgUb7ANiSMZ2C60IHFxJtxIY9JhgFayM4j_qYOp967WI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddujecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedujeetlefhtd
 dtkefgtdeuieelhffgteejjeehkeegveduvdevgeeiheeuueekjeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:Izd8ZBC06I3WaM4OYBrR1P_5BUlTHs0G-NEW8I2xhdn_gE9RI8NGOA>
 <xmx:Izd8ZCjP3pjmKmYSrlVJW-urXSOr3LhJrsP6O6X-bxWOpZ4ONxl84g>
 <xmx:Izd8ZFrAwm5YTIZhJjxhaoqxmCeZTO69yf8ctUv2VbK1M28t18nwWw>
 <xmx:Izd8ZKI3HHhZKlcFK-AHgpHGLrlDYp1zI3AiXiJ_miCNrnfDJCd5Vg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 03:02:58 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH] firewire: core: obsolete usage of GFP_ATOMIC at building node
 tree
Date: Sun,  4 Jun 2023 16:02:55 +0900
Message-Id: <20230604070255.172700-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The flag of GFP_ATOMIC is given to the call of kmalloc when
 building node tree,
 but the call is not atomic context. The call of fw_core_handle_bus_reset()
 and fw_core_remove_card() builds the tree, wh [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q5hlb-00Aecv-Vp
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The flag of GFP_ATOMIC is given to the call of kmalloc when building node
tree, but the call is not atomic context. The call of
fw_core_handle_bus_reset() and fw_core_remove_card() builds the tree,
while they are done in specific workqueue or pci remove callback.

This commit obsolete the usage of GFP_ATOMIC.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c   | 2 +-
 drivers/firewire/core-topology.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index aa597cda0d88..a3104e35412c 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -1211,7 +1211,7 @@ void fw_node_event(struct fw_card *card, struct fw_node *node, int event)
 		 * without actually having a link.
 		 */
  create:
-		device = kzalloc(sizeof(*device), GFP_ATOMIC);
+		device = kzalloc(sizeof(*device), GFP_KERNEL);
 		if (device == NULL)
 			break;
 
diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index f40c81534381..88466b663482 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -101,7 +101,7 @@ static struct fw_node *fw_node_create(u32 sid, int port_count, int color)
 {
 	struct fw_node *node;
 
-	node = kzalloc(struct_size(node, ports, port_count), GFP_ATOMIC);
+	node = kzalloc(struct_size(node, ports, port_count), GFP_KERNEL);
 	if (node == NULL)
 		return NULL;
 
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
