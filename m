Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02346D38F0F
	for <lists+linux1394-devel@lfdr.de>; Sat, 17 Jan 2026 15:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/jrWCpgcHNMYKaluRMfkGhNDWUrWZPkTKkNtP4ZvAnY=; b=g5+4VQS3ctjiPsEKjgp2uoaSy9
	oiBkg2TSGhg2gUGSg9Fu/v8xsyZ/+Ah2DG1Hl6pqmFgLvrEOO6tULdwFv379h5XG3Ru7VdRc36baS
	tWCVPSwJOv+w9KD1MbpKvqJveSs/D8ImoohXQXToKwsKRlez3wITYNRCu4dddTWBBVNo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vh7IE-00030f-Dx;
	Sat, 17 Jan 2026 14:28:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vh7I2-00030E-Fz
 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VxGIvxEnlMyLJw1AXQ5i8GRHQcqLmhfOwo0BLQWHxO4=; b=QjPqWyc/wYpBWOBWdWkEi2Uus8
 6owaw1aZEaHbCbot/tGONIIJ8l5T9e1WX3nNfUVj2aWKAyud7szqwh63R7pE2AHdCemOP0OgJvFBj
 KCJ8S94gze5w0iuWII2KsWQjD6e2ASnEaPJPS9AfiuNGeUo0RBJWZJljqbiBNkWLNuiI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VxGIvxEnlMyLJw1AXQ5i8GRHQcqLmhfOwo0BLQWHxO4=; b=N
 18F+p7n0cnJg80ciKQLJYJ2eqlSR20DmtgKCZ+SG5SUWkbi3G0odc5T8Ibpf19bpGrrVLE8tfHajc
 yWhDiGMzJmVyLWSq8ihjhgIdi4JJCHZgShJMrd9YK+f6Cx81SAJ5YhNP5M4BBaNdApxYOnKLO7R/9
 iU5Jq7To+mcxrW78=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vh7I0-0001Vm-S9 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:34 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id 2B7621D00318;
 Sat, 17 Jan 2026 09:28:27 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Sat, 17 Jan 2026 09:28:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1768660107; x=1768746507; bh=VxGIvxEnlM
 yLJw1AXQ5i8GRHQcqLmhfOwo0BLQWHxO4=; b=YHhYN5lFu9zBO4pkoKnrLOKxAE
 XpGXfFVlW/VvjP7FvQ5ns6tqpIfY2MHyBaY3KFEVjlAabPLE9N9HJ4qs2Vpbr0TJ
 /zVYA4Q6CYashcrHmsjBRgHNPmKrRd7Qzt4tR8iAr5BwDp6xOBtUji/skhmTepGr
 ja1D9H5D2Y4rQJA+J+SjNTISSImnszRMKpHA8NKqxJKp0npRcvOBbFTyAKUNmDne
 d7Noo2k/8netQtAdYzGnzRHz8CJ9yH4wJTVF/MyljnQtS8I2ot7G/s0r8lrxB4U7
 vJ4C2knLRzoELc731Glvd1EXzvDtxn5cTLocuOCwHWdkQtyw5tqbezFNIH5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1768660107; x=1768746507; bh=VxGIvxEnlMyLJw1AXQ5i8GRHQcqLmhfOwo0
 BLQWHxO4=; b=RHgh3uCxHyeOP37dKg67w8RTU3d7/FkvLvGEXWuWyLsN7xCzdMM
 u4RUy0hClbQPmUbkhZjR6Bg1hWeCHrArPFoRZWU2bHhlcLmyNGOBjo/y4YPXDQID
 QhWo7W9gyLImtdzme5KU4ZbOI0llDJkRETHSnaBYSBjwUvd8UY00Qy3SeDkGJ5wQ
 RehzKQxOWvr7xs0rnTb6JqlvcE/Ph6letQ/ipG7aqZzmETDMO1yYFBqbmad/IqFW
 El15cSzd62dVk0+autlOd4bfPBBMuEfA8VBiyGU5/32T+M7njIfEB59IO6tbRwdD
 7naqJeXQo5tlRuiNFqP8ik+n0E4R9k8S/FQ==
X-ME-Sender: <xms:ipxraRCZCstn2JcGULe4Yh_V0MFpJB0TuWymPfQJlfTTJ4rP0YmMSw>
 <xme:ipxrafoMWf4C-8kkAAAoj7gSYgIdsD01VeZlUbhPAfJURfAgL2eiJH62pDxvFcio8
 U7soAwVyXHNIvWK9VrtYGs732oPJcmdyqKhD_rrOW8z0d4MlRSlwA>
X-ME-Received: <xmr:ipxraUgs3n16poBmY9xiXM16vdq0n66nfrTtaZ0_-7F895h-m4d0SelgjA3zmcW8clvdsAzq9cy7EZT7PB85b6sNcMll5JPzyQ__nPlyxjS5bA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufedvtdehucetufdoteggodetrf
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
X-ME-Proxy: <xmx:ipxraUBL8NiS7o5bDDQvuaqqpPIsEmoKvUSwKJ6u3rlleSc1EdF2FA>
 <xmx:ipxraRGY1Y6G3gIJobvKoUmBWeIjciGR6VUBu6IwH0ufkirn7Qgz4A>
 <xmx:ipxraUITXX7CVspNI-LQ1e7dpdScGK_evM69aCrwoG4Kb0FUcWEbYg>
 <xmx:ipxradm0BxcN1cSO9osiRvRFitSRQtunP3uKW_qWt01dbM3Ca8z1sg>
 <xmx:i5xraenPVQBee2bP7KxQz9RtASRisJ92JXFs6w8Z1hL_jEUySU6amXy9>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Jan 2026 09:28:25 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/9] firewire: core: add fw_iso_context() variant with
 configurable isoc header size
Date: Sat, 17 Jan 2026 23:28:13 +0900
Message-ID: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 Currently ALSA IEC 61883-1/6 packet streaming engine provides
 the maximum PCM buffer size constraints to drivers for audio and music units
 in IEEE 1394 bus, due to hard-coded size of isochronous conte [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1vh7I0-0001Vm-S9
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

Currently ALSA IEC 61883-1/6 packet streaming engine provides the maximum
PCM buffer size constraints to drivers for audio and music units in
IEEE 1394 bus, due to hard-coded size of isochronous context header for
1394 OHCI IR context.

The limitation is inconvenient a bit, and this patchset removes it by
allowing the drivers to configure the size of isochronous context
header.

To sound subsystem maintainer, I'd like to send the last patch to
mainline in my side.

Takashi Sakamoto (9):
  firewire: core: add function variants for isochronous context creation
  firewire: ohci: refactor isoc single-channel state using a union
  firewire: ohci: code refactoring to use union for isoc multiple
    channel state
  firewire: ohci: use cleanup helper for isoc context header allocation
  firewire: core: add flags member for isochronous context structure
  firewire: ohci: allocate isoc context header by kvmalloc()
  firewire: core: provide isoc header buffer size outside card driver
  firewire: core: add fw_iso_context_create() variant with header
    storage size
  ALSA: firewire: remove PCM buffer size constraint from isoc context
    header

 drivers/firewire/core-card.c  |   4 +-
 drivers/firewire/core-cdev.c  |  30 ++--------
 drivers/firewire/core-iso.c   |  16 ++---
 drivers/firewire/core.h       |  13 +++-
 drivers/firewire/ohci.c       | 110 +++++++++++++++++++---------------
 include/linux/firewire.h      |  33 ++++++++--
 sound/firewire/amdtp-stream.c |  31 +++-------
 7 files changed, 125 insertions(+), 112 deletions(-)


base-commit: a4cd9860fa085f0d04d2065f4c151fcde9fcdf4a
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
