Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2C4C27B9A
	for <lists+linux1394-devel@lfdr.de>; Sat, 01 Nov 2025 11:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C3e+aj553PKVGkur1iecDQ6FpPNsc/IK/1SBZH23sZ0=; b=K+E1NQANpyGQSW6cAOp3w1CW6l
	FZiyHBMdZ23lnHDTjtnASBxgr0ezk3SHIBYacchbvn2XwaNmCtobC93sCnQod75aBuB7r5Tg2Cjau
	OGkDSc6s6/huXj3zBem/GtlZfuYq9e4QCVc4vAZiu23q2BrN6ve2dygzlZwnB/yAQ6Vc=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vF8jw-0006Fb-FO;
	Sat, 01 Nov 2025 10:21:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vF8ju-0006FT-US
 for linux1394-devel@lists.sourceforge.net;
 Sat, 01 Nov 2025 10:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ztIDKcslTGTCs5LtWQS4Ca7IE0KT1FrU69Pkd/aaHv0=; b=C+JktWQgJPtJQ/OjSd+QoG2cBn
 PX7hJaxYQDTxXiQqxGRkuO6R0hpEw7QG8wKokfXFZazx0fIPD1epVkBqU2n3V5gpWS8OZeo/5TibP
 gmdNyIgmh1cNoByXR8St1FkJCF/MweqNNBuO69pNhAQ3Qv9b8avIwQQ6exwLrLAVbpxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ztIDKcslTGTCs5LtWQS4Ca7IE0KT1FrU69Pkd/aaHv0=; b=g
 oKEtzmB0Z4adg6Svv3oAE7wwHUUTVVifsoUkopUIdoD7GgX0AVI3KPiCs1GvhH8V0++iCeO8OmljL
 34BZLtKStnGGbv33RP9sNaNPYeWpApG7IlwROCVSVfTnprFxmHZQ4C3zWJ7Rqiny9dem+umfLB1lb
 ILToWqoqbuGXKc7E=;
Received: from fhigh-a1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vF8jt-0001pW-I4 for linux1394-devel@lists.sourceforge.net;
 Sat, 01 Nov 2025 10:21:42 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id D38B014000EE;
 Sat,  1 Nov 2025 06:21:35 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Sat, 01 Nov 2025 06:21:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1761992495; x=1762078895; bh=ztIDKcslTG
 TCs5LtWQS4Ca7IE0KT1FrU69Pkd/aaHv0=; b=BmYy+ozDF42wBpWDHjiJWikmpL
 2OqEXAWnLxAx/OSOyENxVLmzuyVtoRprBFQV0iR8hJLrN9/OOAFlyQlH9xJecp9T
 5CudUw8YS6qo9RV21GU38Ccm61boRvJH1wQt/9FeUPo48QPw2X30QGLH4PhJebxy
 c9EIxsjK/yO5kg3t5vjXLjf6xsekEkgHrp3HMcDi23C3ppMxXKIiqGNVLLTFFETF
 Uj2JZZWi/P7y35CZlTnc4EZxOieHr5Yvrdq2bMAlwaRE/sfi3thl20el/BAIdRUN
 NOQdRIsxB2GzI2xOgyuTL0l1LpwT2UGxgOBu+cN1KZsA6w8XpwaGL57RkPug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1761992495; x=1762078895; bh=ztIDKcslTGTCs5LtWQS4Ca7IE0KT1FrU69P
 kd/aaHv0=; b=l9MXZrVgsT2HUEztAerG299jt4oF5VycuFfXgHPdRlP1cnukmkM
 1euvte6FikLBszV0FTi9e8Q146O1AD73a/N1IWzUzIPdifxJ4B7Yotr1gSlgeaxX
 RzMMNzc87slyMD2uCY4tXotYYII2tf+yOWKsD02Tfa1dIrq/aqDEubyJiL63Fc/p
 vHmbV+zM8Flsn0B6cXGY5+zYHdXtk42L4VORbM6syOj8x20H5KrMPYHynd0/gkN+
 OTlUolcTw3SQUueY/SOlVR31HkBq5fDDgqbdSwSZDV0hNQ7WnyHOzoCDIPO+16JF
 0lK6ns8NJdzcIDjA0y9aCD3INJw9WIy8WqA==
X-ME-Sender: <xms:L98FaVfMubpmOyPRGEOn_lGRmF8Dv2UuKDuV9_pBpaMC76TDOY-YTg>
 <xme:L98FaRJ0wGg6s3wMyaeM1Pjm2QbX0e98Ti4S9nmRzH8cMH6D3zdt5SPL5KWpv6DRm
 Rmklr4gkogVLV1kIVm_6A36UccQQVfIDyLsnn81i7YOrAN7KBkiNJE>
X-ME-Received: <xmr:L98FaWEVmAizSVb-b7ezKfJVXj9Hbzs95Mgg6P46xnWIUEM5DcreoH98ui506aOyrRMx5ICjw_CWydHjTwM7b5MygI4XnnRIOqP-OHkuKScajRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujedvuddvucetufdoteggodetrf
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
X-ME-Proxy: <xmx:L98Fabor-rz_KAz-QLGcY8znE39dJkT5lopUqZxfIJqu60yZ1yKzlQ>
 <xmx:L98FafRs2rAFv1JpVrLAnuf0s77hOFnbeKX947QYZC2dWljsLQLZ5g>
 <xmx:L98FaYOTpUUZV70t2yuTyQEaoTgFBQ-ErLvFx724UxNw99hQhOGvRg>
 <xmx:L98FaSOJSTWEag1ttwtaizEJLbf9jqPMcP_8BhKN6LWPsjl96te9Gg>
 <xmx:L98FaezWF048pGmpcqDM_YIBMh9ZeJFO_aHt-A61GwxZAPSWzMNVfxnV>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 1 Nov 2025 06:21:34 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: core: code refactoring for transaction layer
Date: Sat,  1 Nov 2025 19:21:29 +0900
Message-ID: <20251101102131.925071-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The current implementation of transaction layer includes
 some duplicated code for managing transaction list. This patchset adds some
 helper functions and macros to eliminate the duplication. Takashi Sakamoto
 (2): firewire: core: code refactoring to remove transaction entry firewire:
 core: code refactoring to find and pop transaction entry 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vF8jt-0001pW-I4
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

The current implementation of transaction layer includes some duplicated
code for managing transaction list. This patchset adds some helper
functions and macros to eliminate the duplication.

Takashi Sakamoto (2):
  firewire: core: code refactoring to remove transaction entry
  firewire: core: code refactoring to find and pop transaction entry

 drivers/firewire/core-transaction.c | 57 +++++++++++++++--------------
 1 file changed, 30 insertions(+), 27 deletions(-)


base-commit: b330f98ff238ad9446574965d09cab33736519d5
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
