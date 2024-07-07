Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 440EC92982B
	for <lists+linux1394-devel@lfdr.de>; Sun,  7 Jul 2024 15:45:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sQSD1-0005If-Kd;
	Sun, 07 Jul 2024 13:45:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sQSCz-0005IV-FC
 for linux1394-devel@lists.sourceforge.net;
 Sun, 07 Jul 2024 13:45:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qA/HFjc/24lmxUn0haUeS3EHO7KTIEkvUdM/7EDKp2U=; b=i68mmiiFAxv5KIuzxUYi47qlTQ
 dn6mLilqYJHBfIuNb5tA67ZnWk9Ck48MdDZe2tgEFX/Z1Npiar51uAk+SA/FrpGdGQn/8zAvHxhdf
 vOxES7xjD4gHM4a0DmCGUIAx11o/bXwqRHSqHAgiYa75dihpYusBLQ4wA0QXF1RJarMA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qA/HFjc/24lmxUn0haUeS3EHO7KTIEkvUdM/7EDKp2U=; b=K
 Mo8SWtfXiJ1+ZvH3oHXeza1d41ruGouWlECujXsIScBKDbSqDqfsc2xbyNXuEcqxr0TP7cicu8nLr
 DEEDPCth4boJf8bErjawPZxWsbHQH19eHyONklBF9zMUotcwWhN2b1ndR2F8AWBDikDiDWRWJgQok
 u8vsOQl1Y6gbzTBo=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sQSCy-0003D6-7o for linux1394-devel@lists.sourceforge.net;
 Sun, 07 Jul 2024 13:45:40 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id D88301140303;
 Sun,  7 Jul 2024 09:45:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 07 Jul 2024 09:45:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1720359928; x=1720446328; bh=qA/HFjc/24
 lmxUn0haUeS3EHO7KTIEkvUdM/7EDKp2U=; b=eettQHY40kfcsHhMnBqcKuMB3g
 I8MBwZCNGRsjK0pR/x5dqDFlUHoP9+97dNRMh7BSZS4ZE4XvC1rVyyxuXlcwZEbV
 oCo6QUrp7lj5IGDv50rPkSgRiqm0sWVn6l6GWUDzs9BEII7ituIMH8XS+e/1LCah
 serlEb8v6u59urc4YoAfe9ghpTqCfDxn4FtJa/X3AZRRJJ9wuJQMPZIqlSaUu0YG
 9zjOCqt0lnSseCLd4cD9VQRRZCxEzF15FrF8dtDKpLBr1DDtbUuWPA/K0XTLMwT8
 XAF1tDVE3I4zwFlxDCoIMXuNSxIPY4yL8qBCRp02bu0P3e9zNf15UOA0le6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1720359928; x=1720446328; bh=qA/HFjc/24lmxUn0haUeS3EHO7KT
 IEkvUdM/7EDKp2U=; b=lfCblkb9ouLJp67X3s/wB1ThI21GW+4qJznztid6wsMP
 ba+mSRosryuZxZPx6c3jfMFbl0LCq2cfPe9hLnXgpYjEoYcjIo64MWvw7Y9NMe75
 WFwWztB+6PAqg2QAQyLwxSbQcqc+75icCoSePx1/sbNt7ugtjpHmCnzZ7UmKWmSJ
 yy1pFxjauFD0odeNLAicAnPhrUBRDLPRyNvKoGQ9JuKvYl+5F1MIAA+Bu8sAZBXe
 KP9ZawJ7ofRHkKZx8ZNpIDXWZhBHhmFPuihBV9VI9FtLE/gYWo4zEpn0eVqrE30A
 9Z/mt1x5M4UjSGqYEQmK/tAhLMsv/4RKj4YKjkifOw==
X-ME-Sender: <xms:-JuKZnKQcH-Ma9PbXbnDHJLT2YwX5YBXeOvxbSDMkBdeBceRfT1KVA>
 <xme:-JuKZrIIwrG-mbf5Lgw3v9rVs05OLCMSs1EQBZwEF8NtWg-8_r_dKl6bUW5DHY3sz
 cg4KPOmBJ9TZ3y7JNs>
X-ME-Received: <xmr:-JuKZvv35Vreih95K029J_2B2qD1TEOLvh_0HKbahS_-0V2iVf7RCucIVwnsFBTPH_aWdMAaMD8wUNSMeI-rryPpkCp_Mpp72MRqQhup6F5yRw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdehgdejtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgefgheelheejie
 elheevfeekhfdtfeeftdefgefhkeffteduveejgeekvefhvdeunecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:-JuKZgaE_dprdUNbFczBo1GGshP0Q0ltPxdhEdYhU3v4uDbcgt6XiA>
 <xmx:-JuKZuZeWiiKqscYwE9KEdklQkjtZPOF1OfsjZzzLn259NgM3N5vyw>
 <xmx:-JuKZkCoq9ANTLoQ8Ulo8pmAInJ0e23MbV1Ky6wwZOXg2ztnugJUiQ>
 <xmx:-JuKZsa03R-ZPVZh1FukrB3v2HIsd9ltextlQY4pUnkuYMKjXgfBgQ>
 <xmx:-JuKZuHViHomZ2kwZaMNADAuTR29s6UPD-JHXJTnJn2hF3FWpJ68U6M6>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Jul 2024 09:45:27 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] Revert "firewire: ohci: use common macro to interpret be32
 data in le32 buffer"
Date: Sun,  7 Jul 2024 22:45:23 +0900
Message-ID: <20240707134523.11784-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This reverts commit f26a38e61c03fdfacb6b596e1daf665cf4526a60,
 since it causes the following sparse warnings: sparse warnings: (new ones
 prefixed by >>) >> drivers/firewire/ohci.c:891:23: sparse: sparse: cast to
 restricted __be32 >> drivers/firewire/ohci.c:891:23: sparse: sparse: cast
 from restricted __le32 d [...] 
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
 for more information. [103.168.172.158 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.158 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.158 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.158 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sQSCy-0003D6-7o
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
Cc: linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This reverts commit f26a38e61c03fdfacb6b596e1daf665cf4526a60, since it
causes the following sparse warnings:

sparse warnings: (new ones prefixed by >>)
>> drivers/firewire/ohci.c:891:23: sparse: sparse: cast to restricted __be32
>> drivers/firewire/ohci.c:891:23: sparse: sparse: cast from restricted __le32
   drivers/firewire/ohci.c:892:23: sparse: sparse: cast to restricted __be32
   drivers/firewire/ohci.c:892:23: sparse: sparse: cast from restricted __le32
   drivers/firewire/ohci.c:893:23: sparse: sparse: cast to restricted __be32
   drivers/firewire/ohci.c:893:23: sparse: sparse: cast from restricted __le32
   drivers/firewire/ohci.c:905:31: sparse: sparse: cast to restricted __be32
   drivers/firewire/ohci.c:905:31: sparse: sparse: cast from restricted __le32
   drivers/firewire/ohci.c:914:31: sparse: sparse: cast to restricted __be32
   drivers/firewire/ohci.c:914:31: sparse: sparse: cast from restricted __le32
   drivers/firewire/ohci.c:939:18: sparse: sparse: cast to restricted __be32
   drivers/firewire/ohci.c:939:18: sparse: sparse: cast from restricted __le32
   drivers/firewire/ohci.c:2033:23: sparse: sparse: cast to restricted __be32
   drivers/firewire/ohci.c:2033:23: sparse: sparse: cast from restricted __le32
   drivers/firewire/ohci.c:2037:27: sparse: sparse: cast to restricted __be32
   drivers/firewire/ohci.c:2037:27: sparse: sparse: cast from restricted __le32
   drivers/firewire/ohci.c:2038:27: sparse: sparse: cast to restricted __be32
   drivers/firewire/ohci.c:2038:27: sparse: sparse: cast from restricted __le32

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202407050656.03bw1YXA-lkp@intel.com/
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index f8d880574c19..314a29c0fd3e 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -879,7 +879,7 @@ static void ar_sync_buffers_for_cpu(struct ar_context *ctx,
 #if defined(CONFIG_PPC_PMAC) && defined(CONFIG_PPC32)
 static u32 cond_le32_to_cpu(__le32 value, bool has_be_header_quirk)
 {
-	return has_be_header_quirk ? be32_to_cpu(value) : le32_to_cpu(value);
+	return has_be_header_quirk ? (__force __u32)value : le32_to_cpu(value);
 }
 
 static bool has_be_header_quirk(const struct fw_ohci *ohci)
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
