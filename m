Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D63B654C83A
	for <lists+linux1394-devel@lfdr.de>; Wed, 15 Jun 2022 14:15:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1o1Rvi-0000GT-8m; Wed, 15 Jun 2022 12:15:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1o1Rvf-0000GJ-R6
 for linux1394-devel@lists.sourceforge.net; Wed, 15 Jun 2022 12:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E5GB5GpdbYJSrufkCaPqhlwD01Qyo32O/2slcoPfrac=; b=EOHxBRsxMIE5bUchd4AHlohtnL
 0YLe5mmsqapBKC8m/6+G84zwD3OZr194kzo7echyy0Nu+DULAZN6aDg72QG3fsEJjYc1bc7IDkEUC
 nqpv6fKSrAUZDMmc7VahvgffUlLTYoGoOxZ82PzSRMhmtHbfItFn8OsIguJVK6fAPIFU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=E5GB5GpdbYJSrufkCaPqhlwD01Qyo32O/2slcoPfrac=; b=U
 doGXiFqG+NkCNCM9ho3hoopovRQ87FVvw/mG3YOna13PXu1y0oTNVrTxLxdXleNDcOKQ0B+pv0qJb
 xAbXgnZGq7qg6g8Fcf4nbsNTyatUFQK11JenNvmP3V9NQt8fIMIg/IIHQL8d+OIfhE6vZKiZ2fA79
 jWzv8BV4IUx2+Of4=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1Rva-002NBH-IB
 for linux1394-devel@lists.sourceforge.net; Wed, 15 Jun 2022 12:15:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 455CE3200A06;
 Wed, 15 Jun 2022 08:15:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 15 Jun 2022 08:15:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm2; t=1655295309; x=1655381709; bh=E5GB5GpdbY
 JSrufkCaPqhlwD01Qyo32O/2slcoPfrac=; b=6ljtl9uEc1wBVUm2+M5YHWmQ6Z
 EWF413tJRnSF9piY6PtXk4+0udO/8H381RwjCeu9hE4d2bZt1PcV7aZOEsydZY6n
 1AFaal86/POlWPeTnw32lCtPGb1PoYqZEq94G+ArhoaYd30UAhUsIw0ALvXVEIqh
 czkfudiOI8yqImMSydNTO4xKzmNB0zhd+uRJDTv1fmD+dFmxS6l5x5rvRo4CeDyt
 AURvSHIwJUnkhNBEJQl4haP4qcbf2CePxpqFLX23kj4D5YF9Ps6zArMpXdNgawxq
 a/0rPiusH5TAj3LGRjYN99B1tMyCgrORkrevoRqdBNaJu6lRb4qHzv+Z3Fng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1655295309; x=1655381709; bh=E5GB5GpdbYJSrufkCaPqhlwD01Qyo32O/2s
 lcoPfrac=; b=xgXH8KbH+4Bp9fRMS69ltdN0GV1Tc9hAIk08itfVcY0I/Lsh7B3
 jdOa8Jl5RhGFHnlOWNlmfmOvCenXDSLsIH2ve5nvlndRggOWtYL5BBH48o6U7PPU
 G05etzCPpjL7tfs7oXZJSyE6YvUbUe9C6M2iHOZrtO2ZbVcqX1YjojNCO+psCkpg
 dtN3ZKG1vJbmafha31Bg0oPFAIwHDyEtC7zAOQeACQ44+DF5vMVfl7MN6zNDupgA
 d5l1zsnvPvF2UtQoFpO/01D4S4J1owUSOeqlVbAfzQzBMGevHvJQ5Gs5z+WpAXeQ
 QIr6wOy1Dl2GuAihe59h55wfwAVD1HUVZWg==
X-ME-Sender: <xms:Tc2pYnPmjNm0Q4vjUsPuZgr2r_yYw1D-Scep7H9XAD3Y0I2w5KhahA>
 <xme:Tc2pYh-NA6xUHmvlD6YqzkILmdDFg1ffgqX6XrbzYtbP9Jq4lc-cBopwwVIkh5vTV
 xBQDfXA3Vb4nwd6cQo>
X-ME-Received: <xmr:Tc2pYmRIQWDsifDVLYw55mbg7ROL9WO4rHH7s_LXb02RCrCxd9i2WauuwQoCzdsDSqlF5I4Q02d5xgJJ1rmphY44sylQBOwLrsfWVDmyDjhr1XMi3E4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddvuddggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehje
 eileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:Tc2pYrsW6VuGe4I9JZ0QxDJVtbgrAxhqhaSg8n0gySnA85kBWGSyUw>
 <xmx:Tc2pYvdzUueH2PlM3nCjBcFsZFW-VEiMgCA1UrWbo2ZqG-drng9gUQ>
 <xmx:Tc2pYn3m5SxPeJRzsKkSHkPrPk5HGvf_xf3MGb9aNaXXFuTSBUzKyw>
 <xmx:Tc2pYgppJfDW45dZnZCmvmpLt7CllGnrs5II0RgNsqvvyvOSl97F_w>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 15 Jun 2022 08:15:08 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH v2 0/3] firewire: fix minor issues
Date: Wed, 15 Jun 2022 21:15:02 +0900
Message-Id: <20220615121505.61412-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This second version of patchset is revised version of
 previous
 one[1] to fix mistake of macro usage pointed out by reviewer[2]. As I note,
 they are not so urgent changes, thus I don't mind postponing until next merge
 window. Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o1Rva-002NBH-IB
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This second version of patchset is revised version of previous one[1] to
fix mistake of macro usage pointed out by reviewer[2].

As I note, they are not so urgent changes, thus I don't mind postponing
until next merge window.

[1] https://lore.kernel.org/alsa-devel/20220512111756.103008-1-o-takashi@sakamocchi.jp/
[2] https://lore.kernel.org/alsa-devel/87o7yvpf4t.wl-tiwai@suse.de/

Jiapeng Chong (1):
  firewire: convert sysfs sprintf/snprintf family to sysfs_emit

Lv Ruyi (1):
  firewire: Fix using uninitialized value

Minghao Chi (CGEL ZTE) (1):
  firewire: use struct_size over open coded arithmetic

 drivers/firewire/core-device.c      | 6 ++----
 drivers/firewire/core-transaction.c | 3 ++-
 2 files changed, 4 insertions(+), 5 deletions(-)

-- 
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
