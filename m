Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F370971BF8
	for <lists+linux1394-devel@lfdr.de>; Mon,  9 Sep 2024 16:00:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1snewS-0002cT-78;
	Mon, 09 Sep 2024 14:00:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1snewQ-0002cJ-9L
 for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Sep 2024 14:00:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oU9d5e0Jzvvz62Zmns3G3+XGJan1Q52qH2zmhn7bogU=; b=kV4yGTrAYn6hLcP/rKyjjSGjwn
 hUTvRlFcZY6PaBsSBxyu05f0+QrPzqfqUp4PPG+SCnMY1/TvGEJA11gkBY2zrUHRgzMSxb55+BHq+
 lqs4dWIA6e9ZMspJL5clANciQulDA8nuu3R4gQ0dZeryktwRZqPR2lzg+DprJdm4GcIE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oU9d5e0Jzvvz62Zmns3G3+XGJan1Q52qH2zmhn7bogU=; b=E
 5xpAT9ykq14uszphlUTfijTMoUmFkLCMjvtIZRAt9ZQ11BHCoV3ZNT/FD48kObROshbD/eD8alCKq
 z2brp5GGUZ2I5KcKOtyk19A91BSXM3p/8Uaz/mqP44IXvc8H5jRSrfhq7keODkGZlkKa64QZBFbbz
 uXSxqq7EAP1JZYz8=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1snewO-0002Tz-G7 for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Sep 2024 14:00:29 +0000
Received: from phl-compute-03.internal (phl-compute-03.phl.internal
 [10.202.2.43])
 by mailfout.phl.internal (Postfix) with ESMTP id C7D9D1380207;
 Mon,  9 Sep 2024 10:00:22 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Mon, 09 Sep 2024 10:00:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1725890422; x=1725976822; bh=oU9d5e0Jzv
 vz62Zmns3G3+XGJan1Q52qH2zmhn7bogU=; b=Wvd2ctDsDPiQMk7+3QKhkIqn1s
 r2WpcDDOUev1/qQ3xo1MSmpS/0qK4JlJTqMlt4gcpoUzxqSJ28sel7Fj0E/uMFly
 uxIKfglm/fPSlm+DNdQ+V+FFcV+TtS+yRTDhWS6DR78AT2S0ZpFy47jhGyW/JL0j
 rlbsxIQB/MgZqVwOnks3tmnGXsgsyQiI2gmBZt3JnpgkXHUVx4iMrfJjIfhntlTr
 47fsQspGmmD4DerJbpy0pJswaS7SGNhds1+afYxPLyzrz9G6qvVscvYGPEpkDE2z
 2w4DF6NUbGl7ZMXicctzYOHjig6bhfhUp0nInCIlY6Y7URFW6lhDqsJbJj3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725890422; x=1725976822; bh=oU9d5e0Jzvvz62Zmns3G3+XGJan1
 Q52qH2zmhn7bogU=; b=n3IL8//jZZ2LH8W76riiVJ045N7tPWfsHkspgSx0cp65
 4FQPea7IzmD/D8ooarSC6zUbSlUTEgfNr2IPKrjh4B+IC6/kG3nemsj/OPVbwCgg
 OWlMAjskkDNJbovNlDdrLEuDJtXkPGGHra8cPPP/EKO3P2Jizvf+UBHmfmonJmRM
 kggNBNdTBj2TFL8mdnt0r1fz4itbV+dlyPsZlXJJdndWOhNpg/UPTNa4Y0L89dxu
 YEhVSgyYzUD4mcNv8RQO0ywxv1oiCQ79XQUCTsQ7zzU46sB5IU5FTqmf/K/pREkO
 3THxJzXgNtFcxEJ9wZjOm939Xp51RPXkYfOWNtaKIA==
X-ME-Sender: <xms:dv_eZvR6moJno488LL8lIG6B55t_e1gdlj1D1Kbg4YBl_ZRL_KuQ4w>
 <xme:dv_eZgyuI59y7M7VqMBAZRdN7uXZJlscjaTzkPjBvTIzJqUczitESeybWfV5J_aFm
 jVwf5uBJtq5TfZR5ww>
X-ME-Received: <xmr:dv_eZk07AKMFjR92Phvxb2j0hWf8i41rfFZgsqHFDrLPHF89J_O2fsm76rufmRmdvI2GyDo9FZd5WzfJgsWqr758BywUErCTAqZm7B4s8tLVzw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeijedgheehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeffvdeuleffveekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveek
 keenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhm
 ohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlse
 hlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugi
 dqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:dv_eZvDZP1JfrWpVrCXO0Jsf4q_QLgKGvI3N8ZlsG34e9iwQpo9Y0A>
 <xmx:dv_eZogvgagnwOnN3HT1MBvR_1yU70VfIZk_nxdTzZIrQfn0yWgoLQ>
 <xmx:dv_eZjoJ_BGaX1WyeYafMYcQUuSo0VTWu6b-UqFrvl2b8XHL9Snnng>
 <xmx:dv_eZjibr1hldmWlOsylLVK2YTJlLEu9tiTQT2Yw1KpZatTS_UYxew>
 <xmx:dv_eZhucQhxNZkKuMNyq9VFL98RFRTtN0EUjZevaC5aFzLCDd6fAjicE>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Sep 2024 10:00:21 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: core: optimize for concurrent calls of
 fw_iso_context_flush_completions()
Date: Mon,  9 Sep 2024 23:00:16 +0900
Message-ID: <20240909140018.65289-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, It seems to be the last week for v6.12 development. I
 realize it unpreferable to propose intrusive changes, however I also realized
 that there is a room to refactor core functions in respect to handle [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.150 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1snewO-0002Tz-G7
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

It seems to be the last week for v6.12 development. I realize it
unpreferable to propose intrusive changes, however I also realized that
there is a room to refactor core functions in respect to handler of work
item for isochronous context for the next merge window...

This series of changes refactors the core function to call
fw_iso_context_flush_completions() from the work item. It optimizes some
event waiting and mediation of concurrent calls as well.

Takashi Sakamoto (2):
  firewire: core: move workqueue handler from 1394 OHCI driver to core
    function
  firewire: core: use mutex to coordinate concurrent calls to flush
    completions

 drivers/firewire/core-iso.c | 31 ++++++++-------
 drivers/firewire/core.h     |  5 ---
 drivers/firewire/ohci.c     | 78 +++++++------------------------------
 include/linux/firewire.h    |  1 +
 4 files changed, 31 insertions(+), 84 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
