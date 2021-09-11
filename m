Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DA64079DD
	for <lists+linux1394-devel@lfdr.de>; Sat, 11 Sep 2021 19:30:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mP6pj-000401-TI; Sat, 11 Sep 2021 17:30:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1mP6pi-0003zo-EZ
 for linux1394-devel@lists.sourceforge.net; Sat, 11 Sep 2021 17:30:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nqQRGfotft5CkzlD+SmtX31N3TENwLLQrynmTK3hix0=; b=VweWv8ufhyQAhXeah/VLR0X+E/
 QDi3p4hz0mgR28HmD/+XWWxMKwpMsT4L/qGF4nBWnOwn8vrUruNHvs+YSxwHj6clky4U9/nS4kSxD
 BQNDQMbr+6R8w5BBg9Yquyop0r2OWj0OsOec2v+BorDdyqkS4HRLrnsLLyVnEUZgGoJA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nqQRGfotft5CkzlD+SmtX31N3TENwLLQrynmTK3hix0=; b=E5BKcDM4MZ4CVIF7Vl14eHAsK0
 nBgp2ycJ8Ud67OUOY8c0Kc8Wlk2oFEmTg+QMYC3IjdO4pmgpl6RhfELOCklDXTJKBGV2hRSEwicQs
 m9TyispDNKoTjDeoNz8RDZhJkBstPgLHh7ssHM+o1T7wLjXhoVfimvt8b8Xzm1x+a6IE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mP6pe-007KbR-7i
 for linux1394-devel@lists.sourceforge.net; Sat, 11 Sep 2021 17:30:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 3FBE561029;
 Sat, 11 Sep 2021 17:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631381416;
 bh=nuuft++NUwoZlt5wp98zZgiG206MD1ZMESgbISB+iE4=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=YWDFWY8hkrQwFvPyfowflXGMixIVgnye6YHaP1ZQcyFkBM6dO6EJ9GSOJLfLMi4Kt
 SS36cXDlO0GBcdBqnFQKwvf/nUuf+oS7Pt+HkVvIEKxc7En3DVKZy+8xTNqd6e6TVP
 vzpabL8WtAC1A4/dySwPlk8axK2BVWQfq5I9GSgI4rmLZVUj3nexOde9aOUi0P4Byt
 UhfEgdFO71A5XZYQfVSGdhFRElIeTWpGme8Bo0E8xDYka9lEtJTk2znILjISTDp/Ei
 mCRDVuI+gH1S576rDcaHRtiRMuecjAxpy4u6kGgRX6Q7xx433NQNoyN7+l4hLQ8wMR
 JVxlQiD/dXjKQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 3A27A609FF;
 Sat, 11 Sep 2021 17:30:16 +0000 (UTC)
Subject: Re: [git pull] FireWire (IEEE 1394) update post v5.14
From: pr-tracker-bot@kernel.org
In-Reply-To: <20210911134236.58da0be9@kant>
References: <20210911134236.58da0be9@kant>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20210911134236.58da0be9@kant>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git
 firewire-update
X-PR-Tracked-Commit-Id: 54b3bd99f094b3b919de4078f60d722e62a767e3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 52926229be069258440c39de063fcd4a5fd75d62
Message-Id: <163138141622.31861.13677477113703536032.pr-tracker-bot@kernel.org>
Date: Sat, 11 Sep 2021 17:30:16 +0000
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Sat, 11 Sep 2021 13:42:36 +0200:
 > git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git
 firewire-update has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/52926229be069258440c39de063fcd4a5fd75d62
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mP6pe-007KbR-7i
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

The pull request you sent on Sat, 11 Sep 2021 13:42:36 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git firewire-update

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/52926229be069258440c39de063fcd4a5fd75d62

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
