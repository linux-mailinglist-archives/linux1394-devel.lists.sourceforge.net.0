Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8313810F2C6
	for <lists+linux1394-devel@lfdr.de>; Mon,  2 Dec 2019 23:20:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ibu3M-0007t8-Ff; Mon, 02 Dec 2019 22:20:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1ibu3L-0007t1-8x
 for linux1394-devel@lists.sourceforge.net; Mon, 02 Dec 2019 22:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tkdMW98a8yZ226T+UnpFc3lM6d28J+NBXyGUbArVb3M=; b=A6d8mat7cyP5AYx8T+fvm8Wj5g
 FRKhfPpbNLxsiiGy13G7WvARmTK8YAQbWnFyB1r3Ku4te5lHPMlzJ3D66PyGlyO6Y2uwUtzE645L8
 ZXF8r/yiQLzXvc+oky2LUPUNLPvchK7eYCGAOk/8Oy17Vc4/T74iQzsE344U6fAC4xc0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tkdMW98a8yZ226T+UnpFc3lM6d28J+NBXyGUbArVb3M=; b=CDIDpDx3QI6PbuVL1XNOMZno+r
 VjFrkdQ7FtMpt/aLQjTGAWMoMoVp1IcjdlxzTqPzyLD504a514pfVjoyie/FPk+fQimL/cbYb6hVi
 9iZWmM1vBgx5jXjvb3bw66BKlEfAvGs7vhqxJZEsI8KIjtQmalL/itCSHZlL6qALqwO4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ibu3K-004kmG-3r
 for linux1394-devel@lists.sourceforge.net; Mon, 02 Dec 2019 22:20:23 +0000
Subject: Re: [git pull] FireWire (IEEE 1394) update post v5.4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575325216;
 bh=PVAzibMEyic86B3ClR6DenJ+ORcVAz1URHvOrQ+co1w=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=taLtQqk1+9P5TzAc2vApd7tFg2h2+totYlWcC0TwKjLuScl1FvZ3+vfhL/hxchyRL
 KVmKgW7O8iAeL164G4XUaJspsPnBnWtWY5b+AID7DJA0pzPJ8j3uqQdH79w3zRk5yu
 GPmV6bzA3Rasb5LX37xFGtjIUka+dpHxDrCOqL9E=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191201195308.363d0b83@kant>
References: <20191201195308.363d0b83@kant>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191201195308.363d0b83@kant>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git
 firewire-update
X-PR-Tracked-Commit-Id: 7807759e4ad8d46347a5d52a0910269320b81e65
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 9b326948c23908692d7dfe56ed149840d3829eaa
Message-Id: <157532521634.12303.9114949553263526469.pr-tracker-bot@kernel.org>
Date: Mon, 02 Dec 2019 22:20:16 +0000
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ibu3K-004kmG-3r
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
Cc: linux1394-devel@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The pull request you sent on Sun, 1 Dec 2019 19:53:08 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git firewire-update

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/9b326948c23908692d7dfe56ed149840d3829eaa

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
