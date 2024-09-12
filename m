Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E62E0976A9E
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 Sep 2024 15:31:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sojuS-00080h-AJ;
	Thu, 12 Sep 2024 13:30:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sojuQ-00080Y-JP
 for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:30:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V2HnsVLgrrYZBI3hAFY2ve/W7OIqLPa9tNiZfQ+T1WI=; b=dEZFQzC62hEXvJXMPIHfu3Jytq
 2ZCn5WQ8cf9KwAoEpbO0alvM+8lcy3hBgLQZKxydFXF3qUFf+TTC4Zp4+vkMalHCq8CSuVK4r20nk
 P+WWfn5MlPKWXVBm1Zi0OSUHmtofFtYHFJEDxvq72jHtzSPBj4JzXyhU1mBrnEQ6fBuU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=V2HnsVLgrrYZBI3hAFY2ve/W7OIqLPa9tNiZfQ+T1WI=; b=d
 3Ol7XVa2eRyKGSqzCZmDOZp3P2B5q61emxMMnQevrkqv39oo3eckRGlnnXPhrS2jzUqd65y1+R+Ap
 ZH3ZXVephQQPz7XOQeL7BCX86VdDmwIf4FnetEl0gxqJLCxULCaFmEk0K92AUjTyhLrNjpSsEFvt9
 4OSlOLUGgGFzcO1k=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sojuQ-0000Xf-M1 for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:30:55 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 0FFB11140161;
 Thu, 12 Sep 2024 09:30:44 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-02.internal (MEProxy); Thu, 12 Sep 2024 09:30:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1726147844; x=1726234244; bh=V2HnsVLgrr
 YZBI3hAFY2ve/W7OIqLPa9tNiZfQ+T1WI=; b=edsSBqjXI7XyIXjoEUJYxDHEyq
 0qzDmnf0uUxo0BbFDnXbTw6NeR33OhUHg79uSLVVLMNfktcjdPZJ/eZJdJtLDVo5
 ynaHTGtydmBfPAyGYT/PwiC+7ImfnA0hrlJYia3VqkVtCI/S35dXBp+h/qcFB9Bb
 EGMzRCoAQScopKGmU3+aKDvHrSJl6HfSHC94PhF+gZ2XxYA0rrtVwakC2A5X3vcN
 kd/DesXwr3g5CmVicdJBf8DOuBXR6vLfqgcl1Sptbc6t3E1HgQbieDwucNSvc/M1
 oB6uTg7n4kh1gyTsFtx9SGRu1PHTYwHmQIiz3toYLVqn5nuxGv6+ZyXHJ0HA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1726147844; x=1726234244; bh=V2HnsVLgrrYZBI3hAFY2ve/W7OIq
 LPa9tNiZfQ+T1WI=; b=BRS5XQf1pHFomiEOW0RSlEKRcAIG5NxmFoR0GPCvHzI5
 ajrDfBfKrQm/8I+Dp+zaMkjnz/f7n+w7atGAP9AanegbQN5i12h4heVdyTFIvbTC
 5KFvfw20MtCggRJWh9Rup+jTST1GKRsnsO34F40jO/tSo7Wjm8aALYWDnuZqo6aG
 hlB2AZROjBszPCtyiSY4pQXQTsRcIwWzAz0p+c+yr3SILGZv77Xryj0bqcmM1DKi
 EJQiBNU5WEyEnDBDHB2zwJybH5V6+mW/FMuzCkOLF8727BiG82FmwzGoCs/D1RBX
 8oqhYobjKc+PndfV8R9sjvArIY/IBIKMOhDJ/1ePFw==
X-ME-Sender: <xms:A-3iZh_lEBGRmE91jp1eJdXAzXqKybdfhl7lODPGjo1BisRrP9yGyA>
 <xme:A-3iZluEldS-tEju0PVp0AUqPG93NM6b4YRMN3osR173LFwlCEZ-LyARn-ChnYo2j
 DUFg--FsUIQj5X-_2Q>
X-ME-Received: <xmr:A-3iZvB0171Lq1C9ps1Q9TxS2_L_WuBcQs_Bs7i6hc2UF5hbZjov-iD8bSd_yh-r1ldecfqvK9dUgBc6_2R3FGxQXH0M9fRB5oSwmRVjl-gHPQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejfedgieejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeeggfehleehjeeileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdv
 ueenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggt
 hhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpth
 htoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhg
 vgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnh
 gvlhdrohhrgh
X-ME-Proxy: <xmx:A-3iZlfW75nMal8VSPJNLk88oRfKRqqqAlPxCUZu806v2apLXWzvHw>
 <xmx:A-3iZmMxKEzAjCTO4PLe6HNgZM7IGC8_M9oIBvPwZ7OiTzt02J5THg>
 <xmx:A-3iZnmVpmv37TlmL_hH2Tbc3fffrbaXH0ck88UfL_10-NHA7hPP1A>
 <xmx:A-3iZgvsYaxZbJW8bt8VYT34JSJ-MiD15h5ryJGbxocoamZabQSG6A>
 <xmx:BO3iZvbn9CRf_ZGncyuWno9OWTHwp1LGoZ40dOYC27CIhIxfYhg7X9yA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 Sep 2024 09:30:42 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/5] firewire: core: revert changes to keep interface
 compatibility
Date: Thu, 12 Sep 2024 22:30:33 +0900
Message-ID: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 It appears that the changes in my previous series[1] bring
 the behaviour change of core function in the view of user space applications.
 It is not preferable at all without any preparation. This series of changes
 includes two reverts commits as well as some minor code refactoring. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.158 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sojuQ-0000Xf-M1
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

Hi,

It appears that the changes in my previous series[1] bring the behaviour
change of core function in the view of user space applications. It is
not preferable at all without any preparation.

This series of changes includes two reverts commits as well as some
minor code refactoring.

[1] https://lore.kernel.org/lkml/20240911151253.GA167609@workstation.local/


Takashi Sakamoto (5):
  Revert "firewire: core: use mutex to coordinate concurrent calls to
    flush completions"
  Revert "firewire: core: move workqueue handler from 1394 OHCI driver
    to core function"
  firewire: core: add helper function to retire descriptors
  firewire: core: update documentation of kernel APIs for flushing
    completions
  firewire: core: rename cause flag of tracepoints event

 drivers/firewire/core-iso.c     | 40 +++++++++++----------
 drivers/firewire/core.h         |  5 +++
 drivers/firewire/ohci.c         | 61 +++++++++++++++++++++++----------
 include/linux/firewire.h        |  9 ++---
 include/trace/events/firewire.h |  4 +--
 5 files changed, 75 insertions(+), 44 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
