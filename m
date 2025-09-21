Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B766B8D2F8
	for <lists+linux1394-devel@lfdr.de>; Sun, 21 Sep 2025 03:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=86Z14rHj1ikFvWSbvvz7cKNru+dV3sdY3zzgrNZyt18=; b=XiBIM14Hc8zth19WpGjWlUqN9V
	vnxpQLCm/7/2GBoW475Z60xvy2xGVZ5Snt0g9Qo8dxdIGlxG3mzu4vZe/VNtNoHrM9/olY/WGamwC
	7TN5t9R3W29oMrUs/I1wqyeRzNHhQCBH98oHXVvaGa2JGaXYY1EEH4cUoyvLG/5iqCEA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v08Sd-0005vs-5y;
	Sun, 21 Sep 2025 01:01:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v08Sc-0005vj-30
 for linux1394-devel@lists.sourceforge.net;
 Sun, 21 Sep 2025 01:01:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SOIXOBQzMncLwKGIgkvZizVY3nxteb/lnOoo5Kw5DhY=; b=aOsZzCBr6wgQES/vrfuS5sW0eJ
 vATjCc+4XB0WpXB9zdbZr9wymYQLycHz2+Tb4rIIQEnqWOq4znxWvMyBVApQokOtFXkISDanaDCaI
 l4p+87JwpX6W5H57F1kXHywNIi8d2rtZBm4SmYpgyFZX9n6IhGzIJG0SUNZc6BMt1XMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SOIXOBQzMncLwKGIgkvZizVY3nxteb/lnOoo5Kw5DhY=; b=cPfj0iEZF49/rUm7VP70n8WXhX
 BmMytqVUgXPXKlsvPMQGjArQUTrODbmmzRgNF1lvonZzLKeUe0RuNx7zd1Z6Sb7EB1MLQQ4GnzX57
 GSUEwhGYdxrSosTbWlUz5oy5Y16yeOvMCxEl+/ATBa65bUdkB35UETk4iqGjwLO+lRhE=;
Received: from fout-b7-smtp.messagingengine.com ([202.12.124.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v08Sb-00042B-7U for linux1394-devel@lists.sourceforge.net;
 Sun, 21 Sep 2025 01:01:50 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfout.stl.internal (Postfix) with ESMTP id 81DD11D000FE;
 Sat, 20 Sep 2025 21:01:43 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-09.internal (MEProxy); Sat, 20 Sep 2025 21:01:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758416503; x=
 1758502903; bh=SOIXOBQzMncLwKGIgkvZizVY3nxteb/lnOoo5Kw5DhY=; b=F
 /Q/9sZP2Pfq4YUOUQGwyv0aKsDFhJYzDQOd175J6bSQtLhtiGMnQxhDNUiEKJu+L
 BOS3QGVQgOX2xHHu2jDIVhG1T3bFyUbohqwZytdwjZe6q1fVsqtK/bIs1v9N1Lye
 1ewtru7T2D6Z0UyZj7XsrYFDLfCUwBnfKcYXLvh2pDzVTWhB7tk0e1AtU9lcCRBt
 8j6IePVJsuKrgWhlUlvygsi9hKjBxRtChhfVqLkJWiIARK38mTSJq5NyLlHVCNzD
 +i5Q4Ri5Q4H9tJegMK2Jj47t8eszQw3W3qRhsyTvLE2sLAndkFUGqZ5JjVDm7ytw
 aalVvTsj5tlZDFlxHsGRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758416503; x=1758502903; bh=SOIXOBQzMncLwKGIgkvZizVY3nxteb/lnOo
 o5Kw5DhY=; b=YbrekMi4BiRTUaSC/9/kHWsHKAqq23tYStRq3ctgBDKucr3vetx
 nS71eRqVgOyMHLmRWGAM/qPICEHHgpHBfhQNPxgLQxeZgF3V0npGrgeGQcbdPt46
 IOFeBcR/ODbURc9IXU/61l8LhzDCsdv8rAhxA+vid0O0plgcMcQgdyWCgyp5SH1r
 ftBbkBsxKfvd8HA7dduUdZzeeiKRCD71Ed08RIb+vPzYOiitDMKRcU6EKwPcJLE1
 M1CJPIGdpJLIE9eeyB83iAUNNe6mSab7JqqX1T52XcpKNmvT8o7MkPgXMG9eT3BD
 mIXxs2CS9SDh5tbuXW13xNai12MdSMdqVxA==
X-ME-Sender: <xms:d07PaOWV_JO1Ex_kggBcMEie3ObpPFsHWXnkWN-uX6nJaxNV5uhwLQ>
 <xme:d07PaDgOGqCmooMGZPc4bCuLTsspOYGibOOQ2fhhm1eNzNRheQjimnlSWhB8RY0wM
 5y6p0-bo_kpWPAJJeQ>
X-ME-Received: <xmr:d07PaEVJFt1QlVUOFxIvaHOJgLCOllOoHSR5AMImeQPmbIZVMRcFWjA--KnzS2mSBwoJpJCNU5A-IQ_6GEToc4dilIG7FZCVIkAJ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdehfeehlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgke
 dvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:d07PaCPjgWXh_8rUn-JNNQIthlLodC7H3Yt58pWaYvyEQQDP38WglA>
 <xmx:d07PaIYfdVp4Jj5CRXpgRbIXww6nDhd5PI7lHxfCh4FDcnkzJXMsUQ>
 <xmx:d07PaGrYNjae_ofL3L-aiUs5xkB1_YFgMPI0IAQCP7iqwqWjxvTqpA>
 <xmx:d07PaMbkS7I3JFEB2OOXfHX4omifmJ804rBfroD3OdMHVW9LknPoHg>
 <xmx:d07PaP6d28LvXdeeeOaALdwstjpC79y6lj2fzVhG2H6ouDGq5qkOGUYW>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 20 Sep 2025 21:01:42 -0400 (EDT)
Date: Sun, 21 Sep 2025 10:01:39 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: fix overlooked update of subsystem ABI
 version
Message-ID: <20250921010139.GA48628@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250920025148.163402-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250920025148.163402-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Sep 20, 2025 at 11:51:48AM +0900, Takashi Sakamoto
 wrote: > In kernel v6.5, several functions were added to the cdev layer.
 This > required updating the default version of subsystem ABI up to [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: sakamocchi.jp]
 [URI: messagingengine.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1v08Sb-00042B-7U
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

On Sat, Sep 20, 2025 at 11:51:48AM +0900, Takashi Sakamoto wrote:
> In kernel v6.5, several functions were added to the cdev layer. This
> required updating the default version of subsystem ABI up to 6, but
> this requirement was overlooked.
> 
> This commit updates the version accordingly.
> 
> Fixes: 6add87e9764d ("firewire: cdev: add new version of ABI to notify time stamp at request/response subaction of transaction#")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-cdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
> index 78b10c6ef7fe..2e93189d7142 100644
> --- a/drivers/firewire/core-cdev.c
> +++ b/drivers/firewire/core-cdev.c
> @@ -41,7 +41,7 @@
>  /*
>   * ABI version history is documented in linux/firewire-cdev.h.
>   */
> -#define FW_CDEV_KERNEL_VERSION			5
> +#define FW_CDEV_KERNEL_VERSION			6
>  #define FW_CDEV_VERSION_EVENT_REQUEST2		4
>  #define FW_CDEV_VERSION_ALLOCATE_REGION_END	4
>  #define FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW	5

Applied to for-linus branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
