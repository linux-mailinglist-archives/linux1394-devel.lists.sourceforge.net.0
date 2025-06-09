Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBFEAD2A48
	for <lists+linux1394-devel@lfdr.de>; Tue, 10 Jun 2025 01:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XUo/H2ExeU4Qfl3gbdCrHXsmyD07sA7mZSOvpFyRp1U=; b=kCRCF/KP6stxNexlQ4YMI7xKde
	/hVIXYPqkCNMmdBw3ZiWl7bxkL2cEPxdbCm2lxfCvPg4GGwX24SVhNz/d8cdKa4p+DGo6DWlPTeMN
	QtFZR663SN36i418IE04pPHV8cLxYcuxNm9sLNF1cdzf/IMBeNqi1UrWA1b/GicF+V8g=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uOlYd-0003Az-K8;
	Mon, 09 Jun 2025 23:05:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uOlYc-0003Ak-6p
 for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 23:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kd7/xrhnupFFRWoRHA1mjKrfic0CJAI5T8R3UpSyHk4=; b=bLVNMLZEkZMCsNzYE0kTTU75ER
 LO2CcaRI/uJt/GLc9HjBu5tKyu9kGIswDSsICcZOMx6BWc89j3lNsXjQDfxHSc0ic2lVR0FvW3QGq
 blnaYAnWqCMxSxRHOqxhhE9+f7R6+NvmNVyR/7E4lQZpqhQvG+pmPvouzgTq6MuZs15Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kd7/xrhnupFFRWoRHA1mjKrfic0CJAI5T8R3UpSyHk4=; b=Hxi7tpYifnnsauFMdpX6tCJuGo
 cg1EBOWKfUr7N0sQZ9xbU7txpLPCeKWBptiosB15Xkej+xMC0v3y6tCuKaWxmVuKEXYDRldCEi0pJ
 C9Sw+agEFkYRdk1QK4xtGGkblEgiHPxxmbUGp+fIwCKDsCwhvs3ZotF5c6jGl/YWEEB8=;
Received: from fhigh-b7-smtp.messagingengine.com ([202.12.124.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOlYa-0002iy-Uc for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 23:05:34 +0000
Received: from phl-compute-06.internal (phl-compute-06.phl.internal
 [10.202.2.46])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 583D925402F9;
 Mon,  9 Jun 2025 19:05:27 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Mon, 09 Jun 2025 19:05:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1749510327; x=
 1749596727; bh=kd7/xrhnupFFRWoRHA1mjKrfic0CJAI5T8R3UpSyHk4=; b=E
 PzP9P6AcDacA2RlIihH1wna4At70+6sLnKbgeLuo89f+JVZWwE3A11wDnZ/9PDqW
 M+neTnmSwG2PxqLFCtNUej2vFZjkyxsfuTEZ2H9y6+W1SZ2bIyS+LsYRWDR6MYHN
 /EdmYaSwviGZ5clRNJ8Wqft7cxAblFLHdKks+f53iSreF9EKEHEfKX4cwSwE7MrF
 V0gvsi4OcbwU1YjuvxJPETR5IWNcndWFkVUDvXydvC15NoN5zSA+/Lv6yaY6ALke
 yP9U3QmVpOET31e/icseCi/jA11b1mZ4V19dzh5+YazQ4k0Ei+8AcCS9vMlV7twz
 hGG5RDWW+VB8Vc+sSq0Mw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1749510327; x=1749596727; bh=kd7/xrhnupFFRWoRHA1mjKrfic0CJAI5T8R
 3UpSyHk4=; b=VTIKN2iqDLlk6gXMh78bz1nXFaGywMsGaRlWy+ABQTlmNE7XZh6
 Ij/hi9F2gs9+b3c96TCurdCh4n6EDNb7K0qpSwC5Ihxz9VdqS+UCOggpmX61FaKP
 fxG/xm4/mG1lpeyUDGMzxurkSc/bV+L0lTA1Qs/cpRqACDA51I0gg1eih3xui96r
 qvnJjtXn1jMXBWVhS9jd6xc84nLEcR+ZKMmGE7lv8nrbwZgj35LkvrAyVoBc/M2e
 o3URUqsqL1OUw4UhN5NgY0k9RFZTTuHje9eNLU/qwqju3t2HzVHOyC4EciZv1QAX
 ymEXrTHL4kjjZCSnsJXKkD1meDpBBqqt9xQ==
X-ME-Sender: <xms:t2hHaELFefKGpmGZu8Z7LdgzxdbUs0rHtaqha87_zfCjFnw7KnyhvQ>
 <xme:t2hHaEJl4AHu2XpkR981kp3hTqJX0BI8n_F5rHujpbu20MgYCNRnzI-ttIy9XwwGb
 5kBHR-g4ljzjVvg2H4>
X-ME-Received: <xmr:t2hHaEvBvPMr7NKnjvmtpGG5xoadRqDqQ1yF6AeBw3RcL5YEbe9M1AFDcAx2KkBO4Dk8Kzx9ZDfAfcajkdzDE3FK3AeMGqOI4ko0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdelleefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:t2hHaBYbD93C6UTA22Hf8hrKVZgjnopLQ6YknkG5cFmRe5Wbjtnxpw>
 <xmx:t2hHaLYQUPo6tra3hWyO386VuczLJ_bG6aeDYmf8SGFWG8v4Dg9L2w>
 <xmx:t2hHaNA9yT9BLq8xUq54vnfdPc7mNXzXMS43YMGHheKGWCKGMzGCww>
 <xmx:t2hHaBbDlcRDx0HsfD_3bego6bwlS48AKUYikXF8ORttQ9fXiCPHlg>
 <xmx:t2hHaDKcW-woqUW8cfgRDSuf8m1tHY5Vl0FCsAyqeJI6CkTJ_Nsnqw7_>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Jun 2025 19:05:26 -0400 (EDT)
Date: Tue, 10 Jun 2025 08:05:24 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: use from_work() macro to expand parent
 structure of work_struct
Message-ID: <20250609230524.GC229165@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250608233808.202355-3-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250608233808.202355-3-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Jun 09, 2025 at 08:38:08AM +0900,
 Takashi Sakamoto
 wrote: > A commit 60b2ebf48526 ("workqueue: Introduce from_work() helper
 for cleaner > callback declarations") introduces a new macro to retr [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uOlYa-0002iy-Uc
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

On Mon, Jun 09, 2025 at 08:38:08AM +0900, Takashi Sakamoto wrote:
> A commit 60b2ebf48526 ("workqueue: Introduce from_work() helper for cleaner
> callback declarations") introduces a new macro to retrieve a poiner for the
> parent structure of the work item. It is convenient to reduce input text.
> 
> This commit uses the macro in core functionalities.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-card.c   |  4 ++--
>  drivers/firewire/core-cdev.c   |  3 +--
>  drivers/firewire/core-device.c | 15 +++++----------
>  3 files changed, 8 insertions(+), 14 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
