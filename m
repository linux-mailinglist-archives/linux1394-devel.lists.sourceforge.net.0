Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ED181B894
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Dec 2023 14:49:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rGJQ5-00067v-Cg;
	Thu, 21 Dec 2023 13:49:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rGJQ4-00067Z-39
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pMmsyjj7nl7WSS15wYh422IW+VbkrnpbXUDIHZjOSwQ=; b=khFjWji0V9WogU4CyaFYtiPgtq
 MGaW/rHaUIiqi4z2ZyZihAFryyekN15QTnNJgCnetd2Mxw8yEMkJzAP3jefyO1A/8dIr0EKFfiEhv
 tNe8b5mwxqxYXsHcutdB2beFHDK2unp0YzqF1t+FICG3f9ugX66xHTnsohSY4VtO5koQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pMmsyjj7nl7WSS15wYh422IW+VbkrnpbXUDIHZjOSwQ=; b=CQl+Bc82XuOPzRuxWBpD9uWJIl
 4YRFRZQbEr/I6FxU0ffrVu15+jcVb9cjf1SeoWUBiOpWlIl7z6mcDExOVW/FxYMs/Itv+NSEiQe36
 CioQTzrsRd7xjq5WNJ+rWcU+uOGVJ0mM/fGRWCQqK7G4taHAty6BebS+6bj+rQZwIla8=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rGJQ3-0002nV-Qh for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:00 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 3484E5C0114;
 Thu, 21 Dec 2023 08:48:54 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 21 Dec 2023 08:48:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703166534; x=
 1703252934; bh=pMmsyjj7nl7WSS15wYh422IW+VbkrnpbXUDIHZjOSwQ=; b=X
 czRfcSEBVlloJN/YhhcuwM+UlSYI5kpcd/1kDb/B9uf3DwnnTlzSSFAWJTEFTanw
 J5GY7lkfQQ0lNsdPFt3McVMRqPP7yVAs8w6QXl7x3QxTkS6WttSMSG07mK4eOUnT
 VfJw35KyE242ByG3KG2lrscv2TBwVdCrjImV8mU5zG4cV+iYlafWSOjddlNV1PIM
 amkg18/kitraeT6Tvcj9QWnrbomgKbfCmvY2h38w6Z1RmpaQmfNiHBjP62RlL4Oa
 of0EFVa1H3KYjGnRwU0a1ztg3XEVmxpFH9hPHO9jzADMqMIoeEe/N3vLy9x2zRgo
 Su0DXnNRLo7TruwLdaiAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703166534; x=
 1703252934; bh=pMmsyjj7nl7WSS15wYh422IW+VbkrnpbXUDIHZjOSwQ=; b=I
 qRp/tCqosguPNNDC3p+wLS8QYcc/DWxOEKRO93JCCM5CmpwdBy5vmMUc8iFqYe5i
 EgjaWj0e8698yCDelUAwjbm7v6NoNQ7+jSr6MdTtRd5yCNGx8QzjpyziPQDd7UOd
 HC0kQmLKZOr8hZkmHeeH2cKjYxhk3CZ2s7l7L5rHFU91Tu1IiCAgWFnOH7gHZMzp
 /5rrcu60diGNaa7BhRHwEqlc+S4856CNHD09+LbLYodF3HbPDcZ8NApj8JLB8OuN
 ebSLy/x3TwXLcFhkaYYnbScmaL0RrMDP8MVWPPuRBkt37E+e5bkZcu75UyYpTWSF
 cjpr8VC/eZFw9EZ5Jk5WQ==
X-ME-Sender: <xms:RkKEZTM5e4q9eu6BcHGYSjR2y16AzJciKZZtdsJqr8pBdyoeGk5rqQ>
 <xme:RkKEZd9I1egaYENCoTo80YxOJhsxoukNftZA1INjnsHyp16yUwrw1hVGUHd0j9EuL
 n7d1CQRL7qC_HsTuxE>
X-ME-Received: <xmr:RkKEZSS5PEnHR1fsnniXsi9XogODJrW361nFjbB4gy0p_uwiq5yvmTw6PE4sQLWrx9C7qVr8lA3x7HPqBu7LmU2TPIcC3XBNOiGuUwe3iq-Ekw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduhedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:RkKEZXuYROci7VwygWqNMRGnuXt1Ag5_3pj40bCG-yTRPALoyMEzWA>
 <xmx:RkKEZbcy25AVfO9DGCjuljHrh2vgRMHcaeUR0bmUHWX4LK-QiwgR_w>
 <xmx:RkKEZT2ef5C_9t2GeDWIOctSrquoL6Leas2QbjnkL3q7rmy_o6JNYQ>
 <xmx:RkKEZTEYqvTAqcG8fUbnQC45hkHnp1xzjhJY_Vz-pNmc2VeS5a4AiQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Dec 2023 08:48:52 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/8] firewire: core: adds constant qualifier for local
 helper functions
Date: Thu, 21 Dec 2023 22:48:42 +0900
Message-Id: <20231221134849.603857-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
References: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Some local functions just handles given argument as mutable, 
 thus it is preferable to add constant qualifier to them. Signed-off-by:
 Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-device.c | 6
 +++--- 1 file changed, 3 insertions(+), 3 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rGJQ3-0002nV-Qh
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

Some local functions just handles given argument as mutable, thus it is
preferable to add constant qualifier to them.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index eeda7cc59e27..96b0b43da863 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -171,7 +171,7 @@ static const struct ieee1394_device_id *unit_match(struct device *dev,
 	return NULL;
 }
 
-static bool is_fw_unit(struct device *dev);
+static bool is_fw_unit(const struct device *dev);
 
 static int fw_unit_match(struct device *dev, struct device_driver *drv)
 {
@@ -679,7 +679,7 @@ static struct device_type fw_unit_type = {
 	.release	= fw_unit_release,
 };
 
-static bool is_fw_unit(struct device *dev)
+static bool is_fw_unit(const struct device *dev)
 {
 	return dev->type == &fw_unit_type;
 }
@@ -838,7 +838,7 @@ static struct device_type fw_device_type = {
 	.release = fw_device_release,
 };
 
-static bool is_fw_device(struct device *dev)
+static bool is_fw_device(const struct device *dev)
 {
 	return dev->type == &fw_device_type;
 }
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
