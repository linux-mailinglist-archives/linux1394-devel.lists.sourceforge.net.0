Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E090F84207F
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Jan 2024 11:04:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rUkyi-0007lv-Mf;
	Tue, 30 Jan 2024 10:04:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rUkyh-0007lm-7Y
 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Jan 2024 10:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I+csVATMzSI1F8H1aPvtNTgAoo14qkkNUYONssdVe64=; b=enePemsqq2IcY6STDSI8ZllCeu
 Pa7PVk4idCzVC4iiDq9v7X2kjvGqt0lPmbdCHSFr7ncy0vM1HyInv7AayPuLRWmBpoUwzPYVqAzcQ
 tLdVjrYomG3yg8nKGdnNBbUwEMAUfzqpUkUOYi7REYZdtVz6EKK1HGf33k3iqzNIJRO0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I+csVATMzSI1F8H1aPvtNTgAoo14qkkNUYONssdVe64=; b=V24hH/lhfHK/48wuIqK67PCX1O
 qEq37lQfqxdbP8RbfxFv04ExaEsedJsmKZ5QVSL9qG14EFIKDB72Dma8lKq+Vq3S7qZ+HAdOLc3Kr
 vNFqkgP755FHogv4Yh12SLVe6dPyA9mzDUUWfYEGrCtgzDsy85WHTB9P74zR962/fyq8=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUkyg-0003K8-8u for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Jan 2024 10:04:27 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 2C3C93200B4D;
 Tue, 30 Jan 2024 05:04:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Tue, 30 Jan 2024 05:04:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1706609060; x=
 1706695460; bh=I+csVATMzSI1F8H1aPvtNTgAoo14qkkNUYONssdVe64=; b=N
 xRYIy/xZfHsyrINy6VgUN+snFexBvSAXBge0HXOtuCdkict2BkEi2tPFfD0wwSQT
 hgapcf0R3KbxMo40D7/AoPnPh3r+pfN4hwjO0c/mdc/P6YhwhfmtCMfizF/c8WpQ
 f5OMQ7zAvkAXf7Tg2iByjnvxPA3HJIgXkpC1vSg4lutbTkmRsSNacBW+Is6guvqN
 ObijbQK3Pb/ZDToYdlYg0sba38KHLFrOkttx6ZJRP2w33yf0lql7u1TjeIYFR9Qx
 jFth5hrhS/BSOU73jlTyJ1yCekQUxzD+bnnNeQfJzSoKYB1ZpUgeEVFkrMmFsW33
 sBAzm9EqxlCZXnIDR4XFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1706609060; x=
 1706695460; bh=I+csVATMzSI1F8H1aPvtNTgAoo14qkkNUYONssdVe64=; b=N
 gr+Tur7N1qun+HgmRQaInOhgmSAX9BseCsxsfCWM8wWYozm73voDnO0CiqPvTuGU
 BVsZVCx9X7IrTeG0sQCM8TQjm6mpRRVMY/l8LjFX9wGy6aodvvsqIZtYUKy4IMrY
 rSzGVmvl8ywsFUELFDTl9oZnGwIRFxbNFg0ZkU12vPp3m8dI4nituQlkudnlqoUW
 l0TJ7iqGResAr4RYgsoTCyiYjjHtnXwBCLlR80HWRSBoOoIANkhJKoWcja8TXw9M
 gLYf+K68yzeyMsqDqAx+jkZXqrnkLuMf1JBI3DLk5GCaCO8JiwThYU7lAO74+JNz
 j/TqlA653GgjB8R93ij9A==
X-ME-Sender: <xms:pMm4ZSazSl8P0z7HlqgQCErC4GYthbC4LaVAOYTz0tjV7UwOLLRegQ>
 <xme:pMm4ZVaHwBIQI5v4E3eOHfEDtH6-NSF1S4DAt2ymj7USclkEpnU4L4hDxIieb5GGD
 W_ykJwAeluJg26uzQM>
X-ME-Received: <xmr:pMm4Zc87OUSoWNc-U707NQZ5C63DF_-ybLwrBZ-vjYW3mBFGy17OMj3iDZRW1xvIv0bLfG-lDE22ba4JD_JgRYIDm8gMXf4J6W40Yca65KIY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedtiedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:pMm4ZUrd0WHuiH8s9041c5aCltXMBvOysQASy2mVIvZ7BLVfqiLPbg>
 <xmx:pMm4Zdp4p5uxWUmEnkD-K2tJ2BJVDSxady4fVUGfcWL7FE6lxgIg0A>
 <xmx:pMm4ZSTtwLIUUcOGyylUzudfVUGMWx8lqYeqq0W8u1clv1dRB87S-A>
 <xmx:pMm4ZeCHhwHjU1iUIeEmI2W30lsmytW8S9a-k0r-DqzwxCxcGb3mVg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 30 Jan 2024 05:04:19 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] firewire: core: search descriptor leaf just after vendor
 directory entry in root directory
Date: Tue, 30 Jan 2024 19:04:09 +0900
Message-Id: <20240130100409.30128-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240130100409.30128-1-o-takashi@sakamocchi.jp>
References: <20240130100409.30128-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It appears that Sony DVMC-DA1 has a quirk that the descriptor
 leaf entry locates just after the vendor directory entry in root directory.
 This is not conformant to the legacy layout of configuration R [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rUkyg-0003K8-8u
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

It appears that Sony DVMC-DA1 has a quirk that the descriptor leaf entry
locates just after the vendor directory entry in root directory. This is
not conformant to the legacy layout of configuration ROM described in
Configuration ROM for AV/C Devices 1.0 (1394 Trading Association, Dec 2000,
TA Document 1999027).

This commit changes current implementation to parse configuration ROM for
device attributes so that the descriptor leaf entry can be detected for
the vendor name.

$ config-rom-pretty-printer < Sony-DVMC-DA1.img
               ROM header and bus information block
               -----------------------------------------------------------------
1024  041ee7fb  bus_info_length 4, crc_length 30, crc 59387
1028  31333934  bus_name "1394"
1032  e0644000  irmc 1, cmc 1, isc 1, bmc 0, cyc_clk_acc 100, max_rec 4 (32)
1036  08004603  company_id 080046     |
1040  0014193c  device_id 12886219068  | EUI-64 576537731003586876

               root directory
               -----------------------------------------------------------------
1044  0006b681  directory_length 6, crc 46721
1048  03080046  vendor
1052  0c0083c0  node capabilities: per IEEE 1394
1056  8d00000a  --> eui-64 leaf at 1096
1060  d1000003  --> unit directory at 1072
1064  c3000005  --> vendor directory at 1084
1068  8100000a  --> descriptor leaf at 1108

               unit directory at 1072
               -----------------------------------------------------------------
1072  0002cdbf  directory_length 2, crc 52671
1076  1200a02d  specifier id
1080  13010000  version

               vendor directory at 1084
               -----------------------------------------------------------------
1084  00020cfe  directory_length 2, crc 3326
1088  17fa0000  model
1092  81000008  --> descriptor leaf at 1124

               eui-64 leaf at 1096
               -----------------------------------------------------------------
1096  0002c66e  leaf_length 2, crc 50798
1100  08004603  company_id 080046     |
1104  0014193c  device_id 12886219068  | EUI-64 576537731003586876

               descriptor leaf at 1108
               -----------------------------------------------------------------
1108  00039e26  leaf_length 3, crc 40486
1112  00000000  textual descriptor
1116  00000000  minimal ASCII
1120  536f6e79  "Sony"

               descriptor leaf at 1124
               -----------------------------------------------------------------
1124  0005001d  leaf_length 5, crc 29
1128  00000000  textual descriptor
1132  00000000  minimal ASCII
1136  44564d43  "DVMC"
1140  2d444131  "-DA1"
1144  00000000

Suggested-by: Adam Goldman <adamg@pobox.com>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index e4cb5106fb7d..7d3346b3a2bf 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -367,8 +367,17 @@ static ssize_t show_text_leaf(struct device *dev,
 	for (i = 0; i < ARRAY_SIZE(directories) && !!directories[i]; ++i) {
 		int result = fw_csr_string(directories[i], attr->key, buf, bufsize);
 		// Detected.
-		if (result >= 0)
+		if (result >= 0) {
 			ret = result;
+		} else if (i == 0 && attr->key == CSR_VENDOR) {
+			// Sony DVMC-DA1 has configuration ROM such that the descriptor leaf entry
+			// in the root directory follows to the directory entry for vendor ID
+			// instead of the immediate value for vendor ID.
+			result = fw_csr_string(directories[i], CSR_DIRECTORY | attr->key, buf,
+					       bufsize);
+			if (result >= 0)
+				ret = result;
+		}
 	}
 
 	if (ret >= 0) {
-- 
2.40.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
