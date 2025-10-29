Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18471C1963A
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Oct 2025 10:37:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kegYP31BuMtp7F3NUU6bbKNmMtA6f30wDXab3tAs9wo=; b=VVwaiD/Zv7nBVU42TkGGjtG6Uo
	JAtY+a3v+ySLRcv5XJuWRnJgcE4vqTug/rjAR8yYUtB9ecsdxz7AePRLiYX8jIdrU/zVCkBJkRDvE
	IutLTk4M5nvvKqua7dOj/Qfi9cn4F8uLFWTW4tnjwpmMOTokoNJbqapB8TvsKl+P+tSo=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vE2br-0000MC-8a;
	Wed, 29 Oct 2025 09:36:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1vE2bp-0000M5-Fk
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Oct 2025 09:36:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=upK7ctnRojJgYn/vQDzhdh9yh/7Hl3a6w9jUkmmzAy4=; b=QwJuv7citxgGAA13lqPEpy+fo3
 v8rBPCUgv96UFjIX4B0bHEO2j28e/P25uYz1op25xfAXwe2Ch1ZysQm4UHkp0oyodMul5s7pIPeu5
 mG/NRsbyrK947w9PWYJrljM49usF2pB5qTtQ3bYHqv0Kgl2P0M8WM+sLpXiMi9CrtrZw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=upK7ctnRojJgYn/vQDzhdh9yh/7Hl3a6w9jUkmmzAy4=; b=afwdDVJiQhrSOzHGDP7fGelC24
 5cMIqf4SqXLuyuLKGB/CqYeE86FLQHHdhDJ4jfFcVgs+r5BdVgl5/8Rq9YT32HusidqoSWjNuNmSF
 Yyx9yaheVMAFHkqJubkiPTTHwYHggngGNAmuzNqQWkaZKSGIgEjwDP0kVj/o7cx7TWUM=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vE2bo-0008Uv-IF for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Oct 2025 09:36:49 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id CF6901D00149;
 Wed, 29 Oct 2025 05:36:37 -0400 (EDT)
Received: from phl-frontend-02 ([10.202.2.161])
 by phl-compute-05.internal (MEProxy); Wed, 29 Oct 2025 05:36:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pobox.com; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm2; t=1761730597; x=1761816997; bh=upK7ctnRoj
 JgYn/vQDzhdh9yh/7Hl3a6w9jUkmmzAy4=; b=eVkK4mYuoZIZWwNcGtTaqwdXk9
 6WoquzrK9lZ0HM+tPfO5ai8/M+CGDw3aY1z/IdC1Zhzxx2I0Tdh9nL1oQoU0CjtB
 kb0aUPYYzQyorM5Bv/AdKGNrqh7gXJPbequQI3NQrRKjpYEG8iLzek2N2HJa4dcx
 HNdXMgc7XZlldQRntJJnYMgY+d1Bt23UXMIbUNTZ21vrKQNNBxejpcYfmlq+Eim+
 za5qGMKu560MXYWJVSe9GlMIams+evCNodjtb4GNwSpqQFK+AqDCracOUre6uMRz
 XQ2YpG4tbmvwZShWe/gt16h7mAd+wyOsf2Ecezv8zQfBv+nWaxCJqMdxBMJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1761730597; x=1761816997; bh=upK7ctnRojJgYn/vQDzhdh9yh/7Hl3a6w9j
 UkmmzAy4=; b=0s33qyMT+yHT7Ed2IGKt5j0uvhRZwRMg4l2K9v1gYVhyuDwzwJP
 FAvcIqyzT+KTxrrASMOhoL+/ggpioCCVEZ3ws3dKzhhSf2ayxXqy8MKhNWv6NxLG
 Aib2zKaLXotGHF4c9PlDrMf56RtVdUWcm6WlTUiRhtxITDsi2HIuf+SnWpuU8SzU
 unqvO86LKbvdqWnw9VcY6MRF+S94BRwbbDAJJVzXW/KF0zRNu1RwMOLHqBmQ601I
 S2c/940DNiV2wFpMjfE4aZV65Ua7gzrIargW8mktBugFx065r2kwIChGnwPoCszQ
 eGWhajTKw1GznlRqSOuTBNLHbIfHjXxNvEA==
X-ME-Sender: <xms:JeABaTpGOaSWqkj63U_bWi2GPYsZSGy0_RExR51cgVxT6LxpbDeCPQ>
 <xme:JeABaTqihkMGC9A8VQU_Yr7Y6AbRVmcPGJ35ZKHDWsqCpT_bAL_CwVVZRkvc0l21A
 LSfPImxcDpMlB9OPGs9-ra5kEEVzhbblRdPHraylXbcpMYtR2Dss50>
X-ME-Received: <xmr:JeABad0k1MOWg43zsKSbRSkJNmxuSlslIoKQT7IFqx_MOaHNg_VSXSoRRzOO92U7rlmyrmMBHSe0Znh2Q0Y8Yqm5>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduieeffeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpeetuggrmhcuifholhgumhgrnhcuoegruggrmhhgsehpohgsohig
 rdgtohhmqeenucggtffrrghtthgvrhhnpeejudeggfelheeukeeuleeuveekffefteegje
 eltddttdevkeffgefhledvueetheenucfkphepudejvddrheekrdduudelrddvgedtnecu
 vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprggurghmgh
 esphhosghogidrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehoqdhtrghkrghshhhisehsrghkrghmohgt
 tghhihdrjhhp
X-ME-Proxy: <xmx:JeABaSCJCMTMlaf8MVKnpbBrg13-eQ4ZfTN3X6VH1Qa52DLmvwUkkA>
 <xmx:JeABaVegGzbwCTag5iuSI-3PAB8cf_41rJtNM4e9E24qKCCMlSmWVA>
 <xmx:JeABaXhanbu502OUj_KZrH7nFcUaSbDApTO0sq307NKoLwSDf3YdJQ>
 <xmx:JeABadoHfJNqQvCZoQMFkIFrh3-zNPJhnY1Uj0Jj1eT7EcJ8Mf6wrA>
 <xmx:JeABaRuoMhT74WO3kWPbCnnG0xwliRB6czBatmVssrpD6dNYYAae-3sb>
Feedback-ID: i40e14970:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Oct 2025 05:36:37 -0400 (EDT)
Received: from iguana.24-8.net (unknown [172.58.119.240])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id E89F8C015A;
 Wed, 29 Oct 2025 02:36:35 -0700 (PDT)
Date: Wed, 29 Oct 2025 02:36:33 -0700
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH 0/4] firewire: ohci: remove obsolete module-level debug
 parameter
Message-ID: <aQHgIS_mHE2U6P0L@iguana.24-8.net>
References: <20250821003017.186752-1-o-takashi@sakamocchi.jp>
 <aPh7euUDRQFGeMkz@iguana.24-8.net>
 <20251025004629.GC463024@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251025004629.GC463024@workstation.local>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Oct 25, 2025 at 09:46:29AM +0900, Takashi Sakamoto
 wrote: > In my opinion, using tracepoints means to leave from the message
 buffer > for printk once. There are several ways to retrieve the co [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [202.12.124.144 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vE2bo-0008Uv-IF
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sat, Oct 25, 2025 at 09:46:29AM +0900, Takashi Sakamoto wrote:
> In my opinion, using tracepoints means to leave from the message buffer
> for printk once. There are several ways to retrieve the content of ring
> buffer for tracepoints events in userspace, and we have some userspace
> applications to utilize them.
> 
> 1. By debugfs
> 2. By file descriptor returned from perf_event_open(2) system call
> 3. By tracefs
> 4. By printk message buffer
> 5. By BPF
>
> [...]

Hi Takashi,

Thank you for your guidance. It is very helpful.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
