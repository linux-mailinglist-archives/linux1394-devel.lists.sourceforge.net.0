Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF13BBEC6BA
	for <lists+linux1394-devel@lfdr.de>; Sat, 18 Oct 2025 05:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=k89kHrAXVxrq7B/mQoRd0h4HuPoXbKiNFmNrr6hwKcM=; b=iR7wBWzlGD8P/HeF/VV5qgKQG0
	/pPjKZ1d6Owi2aMCwl1fbCrD16z7O8mKmqZDDeEP/kZS0VmFZayj5gQSSzGkMPKwWpsDYhz3CGJ9R
	jCr/hRj/LK/Uu1HWEn2G4ImnNGZ8XiR17JMt8SQeo48SWZXrUfqxsjvLF/EgDUsAMY30=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v9y2n-00084F-Mr;
	Sat, 18 Oct 2025 03:55:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v9y2l-000845-SG
 for linux1394-devel@lists.sourceforge.net;
 Sat, 18 Oct 2025 03:55:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vI3U9j0VFuAbqN5rE+fJwknXiqz2vQ8pUtVy5buredg=; b=LKLwpQSx3qDF8oZ8Z+wJCDYNUN
 XbfHOGrWFP1zqRE5F8MrkfX6k0M/NCflUsWLgoP0N9R5kMeI2TkpUK2p9HE2kMZ537jyfQuFcl+lF
 FRpOx4gZiIvWVqBYT3n/wY9wP+TfmqjvZ3NjGalto0Zoo3TvR1ByZP2aDalcecI99zeo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vI3U9j0VFuAbqN5rE+fJwknXiqz2vQ8pUtVy5buredg=; b=U
 sZcI+TmBMkVqnYHEpsHWboSpmpUYE6j4h2T5Pjt1nnbeRoibzGRxlE+SCqFd2UcQaqtb+n20w0usg
 QtKELznHkSnrJhb9vmp2m3KUygMOCkp5Cifw5jbeRqQfCvwEtha+Y+BtGCC6DHg2NIVgpN1yTdT4n
 PtKZlVXhHUYNBabI=;
Received: from fhigh-b4-smtp.messagingengine.com ([202.12.124.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v9y2l-0004sD-98 for linux1394-devel@lists.sourceforge.net;
 Sat, 18 Oct 2025 03:55:47 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id B056C7A011C;
 Fri, 17 Oct 2025 23:55:36 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Fri, 17 Oct 2025 23:55:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1760759736; x=1760846136; bh=vI3U9j0VFu
 AbqN5rE+fJwknXiqz2vQ8pUtVy5buredg=; b=u0LLiaZrM3huXszIXn8bdyCoId
 IPew8ZWgh6odijkwRm192CqTy30g8r12glmDh5E71Kw/snZhp7PSbWUaBhb+UY8Q
 3MiKkJyttAIQ6s+zU3YfcDBpEsQCbOo15vVZ6pUDc1JA7XHzBqQi135FWhhZgbKf
 0ymHRaPfMIIG6EgYKWCwVk01ZvE1ellLslEwvg1QhIq61XVEj+dr/gliReAJHIiR
 bBv11b7GNMPOjr9rGtMvdFU+XieCFhvgrTUPHPcjGkr+b+ee6lsqPWC9cEYStNcp
 TLLJChT9iw3gj4WBavvsRTi0z3ggp3BUz4+cldpScqqeTOwhizUmHez2ylEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1760759736; x=1760846136; bh=vI3U9j0VFuAbqN5rE+fJwknXiqz2vQ8pUtV
 y5buredg=; b=jNua1nw8J7zjolNIVMtgCctZ9THXwezPmTEhBZyTCbigwIYZrkB
 29bJAKuJ0W0G4oq4DvdHsjl2dtg1yWHbIf/0xciIZIRU5HVw2SVibk8xzRmJ3b18
 B76diUJmHXlQCHLdjwML13sQ2l+LGTQS2GWx7pAP/y6W5IxTV1ss/lzDinaoDOCV
 o7SS7YcuS3zluLwxyXxfIPOLQJWXkhD8qrf0K74xvliv16riGp8NdbMTsPcUHRHc
 xdY8opTA4zP1ed6uIP0gFsOv3DLyjMPg40t6dm85lHGybATQRBt93Ag5MYAv8se5
 ORnST1O5IUBf8Pru7fAA1YoPpdESXrd65+g==
X-ME-Sender: <xms:uA_zaJBYHX4Dcon_xIOXF4aUPnUeMKv5pQoagaVsHyr42eg1oOitTg>
 <xme:uA_zaHqWYZ-6fUJdlOFEwsGqfsKmJ02cuhbBPTV7-mXKfSR40It_CLPOmF9xIx7i9
 RPe81A7FNbsdh0mi2DXeKtqXQpjkI0fLfZBq1oNB6CAFSrKP4vKJS0>
X-ME-Received: <xmr:uA_zaMi3CXy7-I4ymRQQwO10ipc6xFcJ4PWbPPkjJqZ3AExPpPobc4KPUVm7IbwP6wSe8oTB7J39PCOEWa3YkMaPsNN_dtK-Oc8WZ9kp_kNAFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddufedutddvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffveekud
 fhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrg
 hmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdp
 rhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvg
 hfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdr
 khgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvghrrd
 hkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:uA_zaMCwz8pH0vhuQKJQmE3AgAvyjB-SzVn6BRGbvS0NlWtxUM3oTA>
 <xmx:uA_zaJHPJNJQEFqybFmQ4eusH4hPZD854JynpcgwTNPneNEc717cjA>
 <xmx:uA_zaMK09Hz_sfRfT5Vi2kzEJGw-IBtMPYIvus7qddWTt08ycHk_Iw>
 <xmx:uA_zaFl4sJqaPJoo68b8ItReOkA00kuqjWhYuUmrZ_LDBlkm_n_DwQ>
 <xmx:uA_zaGnFfNpd-2F75l5mXx2Vqa4nmCXPQ4SanMC8pjaceXE_3dftDBR9>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 17 Oct 2025 23:55:34 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/4] firewire: core: handle TASCAM FW-1884/FW-1804/FW-1082
 quirk
Date: Sat, 18 Oct 2025 12:55:28 +0900
Message-ID: <20251018035532.287124-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In 2003,
 TEAC Corporation had released FW-1884/FW-1804/FW-1082
 in its TASCAM brand. These devices are already supported by a driver in ALSA
 firewire stack, but they have an interoperability issue rela [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [202.12.124.155 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1v9y2l-0004sD-98
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

In 2003, TEAC Corporation had released FW-1884/FW-1804/FW-1082 in its
TASCAM brand. These devices are already supported by a driver in ALSA
firewire stack, but they have an interoperability issue related to
the speed of asynchronous transactions and isochronous transmissions.
When operating at the speed described in configuration ROM, they are
too lazy to respond, and eventually frozen.

The most likely cause of this issue is a mismatch in the gap count
between the initiators and receivers. Theoretically, this can be
resolved by transmitting phy configuration packets to optimize gap count.
Nevertheless, this approach has proven ineffective, suggesting that the
device firmware may contain a bug causing the issue.

From my experience, these devices operate more reliably at lower
transaction and transmission speeds, which provides a practical
mitigation.

This patch series addresses the interoperability issue. The core function
of Linux FireWire subsystem is changed to read the entire configuration
ROM at the lowest speed (S100), and to identify these devices based on its
contents. Once identified, their maximum speed is limited to S200. The
ALSA driver then performs asynchronous requests and isochronous
transmission at that speed to prevent device freezes.

Takashi Sakamoto (4):
  firewire: core: code refactoring to compute transaction speed
  firewire: core: determine transaction speed after detecting quirks
  firewire: core: handle device quirk of TASCAM FW-1884/FW-1804/FW-1082
  ALSA: firewire-tascam: reserve resources for transferred isochronous
    packets at S400

 drivers/firewire/core-device.c        | 86 +++++++++++++++------------
 include/linux/firewire.h              |  3 +
 sound/firewire/tascam/tascam-stream.c | 21 +++----
 3 files changed, 63 insertions(+), 47 deletions(-)


base-commit: 15f9610fc96ac6fd2844e63f7bf5a0b08e1c31c8
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
