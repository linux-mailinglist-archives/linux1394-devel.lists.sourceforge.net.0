Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C90DBD3536
	for <lists+linux1394-devel@lfdr.de>; Mon, 13 Oct 2025 16:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=byH3dy/tp+GHAk2uuxCP21mIoB0mWWKRijvpSd4WPNQ=; b=K38vNr15PKemc1Pv0JulSuvXTQ
	qITFd1D6YXI8ZYyt2q0yErOrqsqKkOCGI9KVLPUUwdgzFJvHfyFjEb9QwO7xMN8Yo6o4CE/1WnmNF
	2JmGVylJ4JV5QBaRcd88tphr8iSByv7yqUWdTzH9ksT85VBZjKWhccIeLkHGSQ5CCuoA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v8J96-0004Hh-RL;
	Mon, 13 Oct 2025 14:03:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v8J95-0004HR-DR
 for linux1394-devel@lists.sourceforge.net;
 Mon, 13 Oct 2025 14:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0v5l7tGijz2EfG0QG368LVGN6Z2/AIGcrEg8hzXalO8=; b=U7CaxGWOJy3PVU4PUm0ygxPbc1
 GQJ7yX3wOpWnUt3GOPMntJcXHxati0FR2ET0LlyHlqZ8SYZp16i/PokOv1MRQ7Kj7E/TbcDI+0BrW
 M7C6WG8/aOIL6eXiwbQTip2dSIOFxc2CO6ScEhNPHSmOn6IPpZt3XaWKzX0MbP3pbayE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0v5l7tGijz2EfG0QG368LVGN6Z2/AIGcrEg8hzXalO8=; b=b
 exoXyqtycYLxMnG5eolVs6+XJZ58sbfqpZcwekxi48ehZJza8b/5qfLUBIuozkfjkWjSys1FwM3QU
 7iFfsqsKKUvdzEnadhHYWtFPfDdg1fSWNljRoScfc18zL66KHQp1EQxMzj4iX0BE/ModKEi+8TDhu
 A6HtqOCf+uySWSP8=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8J94-0001YM-19 for linux1394-devel@lists.sourceforge.net;
 Mon, 13 Oct 2025 14:03:27 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 6A6887A0101;
 Mon, 13 Oct 2025 10:03:15 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-09.internal (MEProxy); Mon, 13 Oct 2025 10:03:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1760364195; x=1760450595; bh=0v5l7tGijz
 2EfG0QG368LVGN6Z2/AIGcrEg8hzXalO8=; b=kRJXpFJdRrcmcQwBgL9hpXxwtJ
 mavohww4QN0z57tdq8T6mTmyceZjnUPw9lz5iqYTq5BK21D2qWsoSHQMX+Qv1mTB
 CCo1VeXBV83Tk3MqXMjTSbtqXpPFizHoVfvuiUd3pXscycF6hEBgD9DaA2Pk0oAE
 iLeVddqV6hdXAS8EghpRkGuuqJvA1c8qu/L6RcvDSNm44NpeynNq6PeY0bT0Ovuf
 oNsvOWcC55CQZh0H6x4DMiFCRue2rY54RNabcUuc0d0GcVvyOOMJB6jRlds7EPk6
 bkurFUOph7/50y3IWSwk2vBtO67sXgW/JwVaYVT6lhqDJ5nQI1nyriktqo8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1760364195; x=1760450595; bh=0v5l7tGijz2EfG0QG368LVGN6Z2/AIGcrEg
 8hzXalO8=; b=E7fT/E+izu+Rvy/D+jWYy7nNxqfQCRe9zaBWIx9o1LYtg4Z0VmX
 obm129WENgXraiTPrVHR53Ipwy2hHLufm5yqkaVbCy0SBdv+aUPz/sJ4dSg7Nx3q
 AYo3KvOf9dRD7dMDMtx3+DnV4FgeuHaRrYWO059ekZnWTUxv4fCNgaaMuaUkSGfm
 1mzKzLHOZ0JPSEDGeilHCnYn3/KQVu9HjwCZzG/TGyx/aClPYw81RHGlo0hlWf3Q
 XqF/CHQT2OyTiyaAqedMQWIVbdvcGBW4MZ5mhCYDumtmxPws28lKzpucvT5NPFg2
 3W+XaX/5Q5zK31CWUXkEftMuIUREKikL7dw==
X-ME-Sender: <xms:ogbtaABaJh18La4CwcGruwgNqQ6DPGjoGbX_RQA-OE6SJbyxQRDHYw>
 <xme:ogbtaAebCv6xguAVecyzQeny4a76N9PnXJMDmElexGZzUhbeJx7M7xajF4eLEw1oi
 evAquiuH74slv8WQND16ePLb7NFHEdyeywK6nt4iHAInve1KhUoRsQ>
X-ME-Received: <xmr:ogbtaLLJBpj19TC-Ddna2OOlSQvClSqmjrRdbxVK6AoahIuIsZMROs0CqM5IUIJ22UEd2vwn9_SJmbAzXj34EH4jO9KY5iuc3iv7JC4U35VmPw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduudejkeegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffveekud
 fhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrg
 hmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdp
 rhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvg
 hfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdr
 khgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:owbtaDe4yb0af412onUTiB7nJbCqoeZOsQhSbcfs3v7r28vEiOOmBQ>
 <xmx:owbtaC2MrWq8qjJd-VG8mIYNFRe2cuRlCAXyjUgSoT82jQTnnBz1Tw>
 <xmx:owbtaMgUI0lrAv3vLzzgnNYwPcyKqMYbnlBI4zHL9uLHtSUYzNpeHw>
 <xmx:owbtaISReXUczATcNNF9ZkpRH6SPJczw2WUidF1h5oF9WfLzMez1qA>
 <xmx:owbtaJ2igtKSQvjhL0e0gyyjRyrFFxeanMRO2ubDTqoWzvzBtGb-eJUm>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Oct 2025 10:03:14 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: core: add device quirk detection
Date: Mon, 13 Oct 2025 23:03:09 +0900
Message-ID: <20251013140311.97159-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In the history of this subsystem, we have experienced
 some device-specific quirks. For example: * afa1282a35d3 ("firewire: core:
 check for 1394a compliant IRM, fix inaccessibility of Sony camcorder"). *
 a509e43ff338 ("firewire: core: fix unstable I/O with Canon camcorder"). *
 3a93d082bacf ("ALSA [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1v8J94-0001YM-19
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

In the history of this subsystem, we have experienced some device-specific
quirks. For example:

* afa1282a35d3 ("firewire: core: check for 1394a compliant IRM, fix inaccessibility of Sony camcorder").
* a509e43ff338 ("firewire: core: fix unstable I/O with Canon camcorder").
* 3a93d082bacf ("ALSA: firewire-motu: add support for MOTU Audio Express")

However, there is no common mechanism to handle such quirks. This patchset
adds a consistent approach for detecting and managing device-specific
quirks within the subsystem.

Takashi Sakamoto (2):
  firewire: core: detect device quirk when reading configuration ROM
  firewire: core: handle device quirk of MOTu Audio Express

 drivers/firewire/core-card.c   | 21 +++------
 drivers/firewire/core-device.c | 78 +++++++++++++++++++++++++++++++++-
 drivers/firewire/ohci.c        | 29 +++++++++++++
 include/linux/firewire.h       | 14 ++++++
 4 files changed, 126 insertions(+), 16 deletions(-)


base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
