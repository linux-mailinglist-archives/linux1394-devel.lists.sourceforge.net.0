Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B340043E0BB
	for <lists+linux1394-devel@lfdr.de>; Thu, 28 Oct 2021 14:20:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mg4OR-0007H6-1Z; Thu, 28 Oct 2021 12:20:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <patchwork-bot+netdevbpf@kernel.org>)
 id 1mg4OQ-0007Ge-2b
 for linux1394-devel@lists.sourceforge.net; Thu, 28 Oct 2021 12:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:
 Subject:Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IiuLS+QVLiYFNF8ZRtPxSNwbzdMBpojPhL2xLKnod04=; b=ih35wcSNiWO60wk+ALEKGHp5On
 dGQpyYpfTok76CxgJ1EjFa+J0sGEpjxtLTrkaLsdz8A8PTnReFaEKG0dYO7lse77HT5Ny2WGS6E8f
 Ndh0fxNp475sQ/5zCSMWGnA9d2EuN4hpz+iXj6f1DOYjVFtfFPUVNgvVKP1XBQLxLHvc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:Subject:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IiuLS+QVLiYFNF8ZRtPxSNwbzdMBpojPhL2xLKnod04=; b=AjFOICFrkuJRFFEpG9BRkNbjck
 X4Hcie9BaY5hlcEe5R0URx+MJUrDJD4Nje6gL/cveMi09tgrkBWFeKaP276fooCgUUtx5ShOalA5D
 Gk1xNu1DiZYlEsqdB6G3u059ZX0B5T2gMwA1aCPGYGdYobZ3JBVoNd26g3L6rGgqEKcs=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mg4OJ-00051F-Bt
 for linux1394-devel@lists.sourceforge.net; Thu, 28 Oct 2021 12:20:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id E9FAB61108;
 Thu, 28 Oct 2021 12:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635423613;
 bh=yYfVPPSlTQA6d2hNV7LKPElOdB6vkIJs4eY+dmuh48o=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Tm0Q64ifSujdTliCPgt3Ss5AyRJAg78UA7mAIbo1p/rM7kRaO6uRJuqdRbkth9xc+
 WIljBYzmdV9SS0zX83OR/pZ98hXQo7wC+ZrDE6+UaXCTQeD8M7ci88EPwFPM76SVFj
 T7TGnRLuy/WQJJ6K4SM0DEza7vaGTH9pzAAGAH9mtGioar+OOiROOY7OCU9AGg+ko3
 NVdruFD0HIml6Xdn6F3L7+dT4FJhMeQHSiky3T2LasioUj97T0Q4hnwiC2mYverC3x
 KhbVhmOmRG2BuJizRFHzpHG7b3M+zqgjtKCgJwnVX0mDxKhZN0HPNV+hzsZrs5/Ts7
 AkfpqKMbzlNqg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id E516160972;
 Thu, 28 Oct 2021 12:20:12 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next] firewire: don't write directly to
 netdev->dev_addr
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163542361293.29870.11627651089310306022.git-patchwork-notify@kernel.org>
Date: Thu, 28 Oct 2021 12:20:12 +0000
References: <20211026175352.3197750-1-kuba@kernel.org>
In-Reply-To: <20211026175352.3197750-1-kuba@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello: This patch was applied to netdev/net-next.git (master)
 by David S. Miller <davem@davemloft.net>: On Tue, 26 Oct 2021 10:53:52 -0700
 you wrote: > Commit 406f42fa0d3c ("net-next: When a bond have a massive amount
 > of VLANs...") introduced a rbtree for faster Ethernet address look > up.
 To maintain [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mg4OJ-00051F-Bt
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
Cc: netdev@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hello:

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Tue, 26 Oct 2021 10:53:52 -0700 you wrote:
> Commit 406f42fa0d3c ("net-next: When a bond have a massive amount
> of VLANs...") introduced a rbtree for faster Ethernet address look
> up. To maintain netdev->dev_addr in this tree we need to make all
> the writes to it go through appropriate helpers.
> 
> Prepare fwnet_hwaddr on the stack and use dev_addr_set() to copy
> it to netdev->dev_addr. We no longer need to worry about alignment.
> union fwnet_hwaddr does not have any padding and we set all fields
> so we don't need to zero it upfront.
> 
> [...]

Here is the summary with links:
  - [net-next] firewire: don't write directly to netdev->dev_addr
    https://git.kernel.org/netdev/net-next/c/aaaaa1377e7a

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html




_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
