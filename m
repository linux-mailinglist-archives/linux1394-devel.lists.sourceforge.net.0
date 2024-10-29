Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D209B3FAC
	for <lists+linux1394-devel@lfdr.de>; Tue, 29 Oct 2024 02:19:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1t5atb-0007Vp-L1;
	Tue, 29 Oct 2024 01:19:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1t5atZ-0007Vh-PA
 for linux1394-devel@lists.sourceforge.net;
 Tue, 29 Oct 2024 01:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DFZvUn3BP1CH8W8twa67vrPGh9GQ/uWPY5MPWnm3GKQ=; b=R68t3IsTQyM0nESuggKlXmn4Dl
 /Vkiv+5NVyev1bQU42pAswTQVhsia/5Cg9v4k5ygPRaQz3aYrujIOwEupXIUYUQ2tyKLibKeHdkb4
 lOWGNzWwH7madUJnx46G3Mc2Hn7LSNkD47pq0qhknt/wtpAqYubDsZMPoQ6Vkl8KIwuI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DFZvUn3BP1CH8W8twa67vrPGh9GQ/uWPY5MPWnm3GKQ=; b=LGKSaNy1O9PfLwwn4PD9Efe97i
 UgduUPaMQtwMIlzgynH0Q+icDw74jCPKkxq4BnhN8PLw6sjP0IV+Dvx/tBq/BbzKGnJol3wyBJFAq
 QIPc0EJQcQpw1qBAN6KAjK5COMsatGAtYaszHJ24NrIL+/ZyTE+PzRj781LdWlvJHHcg=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t5atY-00059F-DY for linux1394-devel@lists.sourceforge.net;
 Tue, 29 Oct 2024 01:19:41 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id AB231114019A;
 Mon, 28 Oct 2024 21:19:29 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-12.internal (MEProxy); Mon, 28 Oct 2024 21:19:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1730164769; x=
 1730251169; bh=DFZvUn3BP1CH8W8twa67vrPGh9GQ/uWPY5MPWnm3GKQ=; b=R
 brvQtuQNXOyWPf/F2Rm2IBo1L9v2GCuGjn7qxnD1PouF2i5Cjj3hZ80jo8xrc3lj
 Z0hydBCd1ssb3iZPctSURCN6CJmgyJU3YR0zP2xbyF78uF/4HyJQotrMiAUMIe5n
 W4LAHBWj4DO12oe+4ALsRri1ujgrmiTwZk0c/BrmUzsLowoJE7aThBdZBXG1lXjT
 oh0VktUQlMEhmORKBjwPeOWVXn1vFeMS6646yOgTiY3AbZF0jQQY96wXmJkkF3pz
 IT1aiKmF69n4BSYtAmB5sFin/MG/yNkra1+v9i7UZJ4ynlL7ZzTTU2gzftglwuZs
 4tGM5l6DGBB73sbDwDgXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1730164769; x=1730251169; bh=DFZvUn3BP1CH8W8twa67vrPGh9GQ/uWPY5M
 PWnm3GKQ=; b=gI0i/TCLghkUKGeCa9UQJpmeB8r557gUV+GJMXTil9ji3/I5erJ
 XbWhyBB5ktCHO9fVEU9hLEHuMq1URxGd+Gm8bnY0qbIJomkR7vzegTBqJDbNMRGU
 lkJu+2xFJUSEmCB+P/RZGruAD0oOQUKz7J3/LZ+9ND+s7wrJVcn7mgpiso7uHAnr
 qZf4yWySOTCUPorliwbKjzB/8kfZokTpIby4FWzhXim8jPkTE+TxQq++gPFqtIGe
 K6AtnwsNvre1QzqdBEDHvFjfRelORb49B0V8cd+Sklzb//yjvsgGSvVi4vFnFANU
 drpypgsq9KBy8K1wkrXr1ykW+/QalI2gkVw==
X-ME-Sender: <xms:ITggZ7FgsIreILCi1bsrgdbeyOgWTpN4D1eQ7jvypdQ6-G2_npnqhQ>
 <xme:ITggZ4VNGm24TVHdN4_6-BYSxuYT7tKBLPMKOjwfLFOa1C3UF67kU_ceoRY1ywPSf
 d_6McQrNV4pzTnMLeo>
X-ME-Received: <xmr:ITggZ9LX1NlEPs_wQBHmF5tDr_OOdWuXa8XcFJnRiNY7jspZuO8jY_NUEZbkjUXGlQWCR5D0zstgM9ZCapkaFCwbQUZXYsT_Yrc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdektddgfedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeu
 ffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhho
 tggthhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtg
 hpthhtohepphhsthgrnhhnvghrsehrvgguhhgrthdrtghomhdprhgtphhtthhopehlihhn
 uhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpd
 hrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:ITggZ5H8AVDwHhj5XWaKwjmlz4Ht4VuPmoE5GweB3AtvQBrzjUWwZQ>
 <xmx:ITggZxWUsqmUFpMqhTLx0jzajltPB21Cv3d7XAnmHbJRmb0bMirVdQ>
 <xmx:ITggZ0OHVuyp8I4HKusz-foPr-KlAUgOwyEbH0k8jlyG7FCJSrtOIw>
 <xmx:ITggZw1bv5wasf2IawOpCt5r64xKim9t4kmV3uJXXGPlrPajq2XpqQ>
 <xmx:ITggZ0RygUTP7uD6NmFgkw7E07dwizLIMSOzEcuf_6DSuX1x3XF5Cduu>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Oct 2024 21:19:28 -0400 (EDT)
Date: Tue, 29 Oct 2024 10:19:24 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Philipp Stanner <pstanner@redhat.com>
Subject: Re: [PATCH] firewire: ohci: Replace deprecated PCI functions
Message-ID: <20241029011924.GA260237@workstation.local>
Mail-Followup-To: Philipp Stanner <pstanner@redhat.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20241028094440.19115-3-pstanner@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241028094440.19115-3-pstanner@redhat.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Oct 28, 2024 at 10:44:42AM +0100, Philipp Stanner
 wrote: > pcim_iomap_regions() and pcim_iomap_table() have been deprecated
 in > commit e354bb84a4c1 ("PCI: Deprecate pcim_iomap_table(), > pcim [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.157 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1t5atY-00059F-DY
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Oct 28, 2024 at 10:44:42AM +0100, Philipp Stanner wrote:
> pcim_iomap_regions() and pcim_iomap_table() have been deprecated in
> commit e354bb84a4c1 ("PCI: Deprecate pcim_iomap_table(),
> pcim_iomap_regions_request_all()").
> 
> Replace these functions with pcim_iomap_region().
> 
> Signed-off-by: Philipp Stanner <pstanner@redhat.com>
> ---
>  drivers/firewire/ohci.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Oh, the API has been made available outside of PCI subsystem, great.
Applied to for-next branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
