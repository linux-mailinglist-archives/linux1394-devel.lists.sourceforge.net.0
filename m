Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 983DC714894
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 May 2023 13:34:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3b8s-0007I6-NM;
	Mon, 29 May 2023 11:34:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3b8r-0007Hq-He
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1fuN5P032DVe47O4bTEIAt4bBcXabCWszDOBsC3t9E4=; b=fi2UmvupoKMw0txd4ZjhCjhoAf
 QDtoQtjETzwtt07E0/LxJEWuF58zLoeCKncZet4/k2qf5+m3c4GRseR6G2SPxUaF4tufzk5nXq6Z9
 GsISF8W2etOl01oBmmn3WfVBL8IdDn9WDnFQwp6bk3YaKJs0kHl/kAeN/4lNyCy/kMZY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1fuN5P032DVe47O4bTEIAt4bBcXabCWszDOBsC3t9E4=; b=C
 MuvanMaBti2i8JgSGzUeW6vwi01PnYjBKlrSP2qMXhfObbjhKry3Ge5AC1x0/oS8U87BbtfsRL+Hc
 A1iKaukDuKq9OvEca9vZSOFAKJcQ0r8n6tWF9gfdBSlQfIf1suFbvebSNzLx0UbFTSTq2FhWVzKUD
 OUdsNIo4Rg28PbbI=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3b8l-0008Kv-W9 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:26 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 4B5F832004CE;
 Mon, 29 May 2023 07:34:12 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 29 May 2023 07:34:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1685360051; x=1685446451; bh=1f
 uN5P032DVe47O4bTEIAt4bBcXabCWszDOBsC3t9E4=; b=suWnMOA3yiBeHJaQqg
 4YCtGlE0yS+VOjxrJh/ZIsAJ2HBWGvM31zaJJ7vUbRMysuswLJt4e/Ld/87Ol3a3
 Q4qYehyQGwkaozOBsZ8IXCfU/I4Q0zDPNO7y4qworuUSpqYe01AYMemSfPUFYeCI
 +YZT254kbuZQq6K69DMekb0OisWAWr1SJVengn+VkdNMvve7XyXvNebp7XkuHxlQ
 G8oQzDu8BS53/cH5DKj6trb75gAa8qAx9x7aTKCorh71d2gLLaDp66Vt0gcbRAWr
 D/9XlOJn93DYZgV0h688rgN2gOuTgi3rbJEt+Evz2k7ivYauCiTK/C7ww3o/yIdE
 OUSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1685360051; x=1685446451; bh=1fuN5P032DVe4
 7O4bTEIAt4bBcXabCWszDOBsC3t9E4=; b=lL21VbLAfTchY2EgGoCH679I/DICm
 yvNJpttIAFPZsamZOtMMXY6qNqur1FFYuTSV4AH21h5aGW39j+HShlhZFEWt/X21
 RRtv+jDb7hpR16ursFBevK5qaHoc6NElOCHDbGJrDq/UWNght+s66knBKWsGaIr6
 MuukoFZinDTRi36HGwrQCJAQRzq1V8k3YiBJDkF+3kSQBc5h63mgcgLD1rHoer7N
 Ax3uG/H2am5N300NjMLznh7/5b2Is9SMAKpNcbKMWrWXiRapMXCF3xIcQA3XUpOr
 j0tJAe+U3e/hp6uhrQlR+55qY4sGxjHKUOLHJ3X7saqNmL/aihGnubDNw==
X-ME-Sender: <xms:s410ZD0Gi7W3UiRaz3iOs5S99pkVzz_QgSULBEuwmRKVuZ8KCHPzYg>
 <xme:s410ZCGS_iHxzqZmX1pHKiCod3LOrLmHYXSWfpqV53_6IBXEPxuKz4drqVA0XRlVC
 -0rnoStEtrZZvfpnGw>
X-ME-Received: <xmr:s410ZD42enwya_5_wA2gt7ObgyB_6lMOo60zKoHCVfaXOTa_YdiYXv-RZiVE_42FfupnVgT-Z4MBd1VY8gx7b30uLj53l1WkcU7geFz-u6hU0Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekhedggedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehje
 eileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:s410ZI040NZjDFZXbHWmtRJfrZSrM2mwBaHFFWoKgl3FV2a_YosRiA>
 <xmx:s410ZGGGti2U46S1KnK5JPC9bcvbLCqgWChUHMv2PbCKyFWbl2tfvg>
 <xmx:s410ZJ_5xPNyjkRl6nDpO5-TKc_cQ4GS6UGkOBR0Zis7xTFTPC482g>
 <xmx:s410ZIPort7fhJJN1U8QheEA-BOBBUqO0hoN1ISU9TR-PDMRZyWlqw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 07:34:10 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 00/12] firewire: deliver hardware time stamp for
 asynchronous transaction
Date: Mon, 29 May 2023 20:33:54 +0900
Message-Id: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Cc: kunit-dev@googlegroups.com Hi, This patchset is revised
 version of the previous one[1], I realized that it included wrong version
 number of Linux kernel. The new series includes changes just for it. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q3b8l-0008Kv-W9
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
Cc: kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Cc: kunit-dev@googlegroups.com

Hi,

This patchset is revised version of the previous one[1], I realized that
it included wrong version number of Linux kernel. The new series
includes changes just for it.


Copied from the initial cover letter:

1394 OHCI hardware supports hardware time stamp for asynchronous
communication at 8,000 Hz resolution (= isochronous cycle), while
current implementation of FireWire subsystem does not deliver the time
stamp to both unit driver and user space application when operating the
asynchronous communication. It is inconvenient to a kind of application
which attempts to synchronize data from multiple sources by the (coarse)
time stamp.

This patchset changes the subsystem so that the unit driver and the user
space application to receive the time stamp, therefore it affects kernel
service for asynchronous transaction, kernel API for unit driver, and UAPI
for user space application.

[1] https://lore.kernel.org/lkml/20230525101625.888906-1-o-takashi@sakamocchi.jp/

Takashi Sakamoto (12):
  firewire: add KUnit test to check layout of UAPI structures
  firewire: cdev: add new version of ABI to notify time stamp at
    request/response subaction of transaction
  firewire: cdev: add new event to notify request subaction with time
    stamp
  firewire: cdev: implement new event to notify request subaction with
    time stamp
  firewire: core: use union for callback of transaction completion
  firewire: core: implement variations to send request and wait for
    response with time stamp
  firewire: cdev: code refactoring to operate event of response
  firewire: cdev: add new event to notify response subaction with time
    stamp
  firewire: cdev: implement new event to notify response subaction with
    time stamp
  firewire: cdev: code refactoring to dispatch event for phy packet
  firewire: cdev: add new event to notify phy packet with time stamp
  firewire: cdev: implement new event relevant to phy packet with time
    stamp

 drivers/firewire/.kunitconfig       |   4 +
 drivers/firewire/Kconfig            |  16 ++
 drivers/firewire/Makefile           |   3 +
 drivers/firewire/core-cdev.c        | 252 +++++++++++++++++++++-------
 drivers/firewire/core-transaction.c |  93 +++++++---
 drivers/firewire/core.h             |   7 +
 drivers/firewire/ohci.c             |  17 +-
 drivers/firewire/uapi-test.c        |  87 ++++++++++
 include/linux/firewire.h            |  82 ++++++++-
 include/uapi/linux/firewire-cdev.h  | 180 +++++++++++++++++---
 10 files changed, 625 insertions(+), 116 deletions(-)
 create mode 100644 drivers/firewire/.kunitconfig
 create mode 100644 drivers/firewire/uapi-test.c

-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
