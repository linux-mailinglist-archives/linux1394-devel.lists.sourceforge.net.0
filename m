Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBA0AE1867
	for <lists+linux1394-devel@lfdr.de>; Fri, 20 Jun 2025 12:00:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l4dT59PnSTSNmds9SRn5az2oRnVH97+43hK3nex/XRc=; b=LZYzwpFhb483SNcpIdUAWnXYF/
	Ghex3Rzj8jnJ2ch/Sl1+pzfz0KtDquP85rxAxOy0G/Av7d6N7y5xXgqM5H1zg3AqWRhbzTebo8UcK
	Ixb3zqFZHxUM5vK4iwYVnE5dx5uUpGsDbhzVlPLnNDqDS/9BHJjDBLp+eIiZtoEB2ZRs=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uSYXW-0001Np-Mt;
	Fri, 20 Jun 2025 10:00:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jwoithe@just42.net>) id 1uSYXU-0001Ng-P0
 for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jun 2025 10:00:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cHvaxwu+fsM8QTnTVZ9GRaDRcMGEUy3SiVXSRbPeON4=; b=Byeb62tYW13XESz3DgJ85nAkgI
 PnwXzfKXuFc7oTw68I+OwY3+4PUSJNMsClF+9PTRy3Dln6VseQOdXYjbt8a5qm7l6eejHIfOlQTZ4
 u1SyVfrSokXwFTVPfvsMVtmBby4nmAsQJZRuhTtp79W6J79EmB7IO3cilBhuRWaHUe3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cHvaxwu+fsM8QTnTVZ9GRaDRcMGEUy3SiVXSRbPeON4=; b=k34yJzEQ0btA04Jq6QdNL1ZF+z
 neoOvoY4N+hQEfyjhgJWWod+dmPwTcVCJDwPDp5BSstHUc0TpGeq5nuKOBxDISFFTVRoeN5u9tRgL
 DVLFtbDm7MLgcJBJMqO3XZsb9P2rA9dpPUNMI2OsuXcug3GsBYOR7mbLe4GMUodcSMuU=;
Received: from server.atrad.com.au ([150.101.241.2])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uSYXT-0004Wk-Ss for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jun 2025 10:00:04 +0000
Received: from marvin.atrad.com.au (marvin.atrad.com.au [192.168.0.2])
 by server.atrad.com.au (8.18.1/8.18.1) with ESMTPS id 55K9xmvD007433
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Fri, 20 Jun 2025 19:29:49 +0930
Date: Fri, 20 Jun 2025 19:29:48 +0930
From: Jonathan Woithe <jwoithe@just42.net>
To: AreYouLoco? <areyouloco@paranoici.org>
Subject: Re: Possible regression with the FW643 chipset
Message-ID: <aFUxFOKsMpURMCGj@marvin.atrad.com.au>
References: <aFSbwoRkxkISumSk@marvin.atrad.com.au>
 <42E4440A-11E8-4BD5-B27F-6FB0CBEFC1C8@paranoici.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42E4440A-11E8-4BD5-B27F-6FB0CBEFC1C8@paranoici.org>
X-MIMEDefang-action: accept
X-Scanned-By: MIMEDefang 2.86 on 192.168.0.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 20, 2025 at 09:32:57AM +0000, AreYouLoco? wrote:
 > Good you reported it even before I did. Thanks for adding your input. >
 I am willing to build kernels and test patches. 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1uSYXT-0004Wk-Ss
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

On Fri, Jun 20, 2025 at 09:32:57AM +0000, AreYouLoco? wrote:
> Good you reported it even before I did.

Thanks for adding your input.

> I am willing to build kernels and test patches.

Oh ok, that's awesome!  Would you be willing to do what's called a "git
bisect" to discover the kernel that faulted?  In simplified terms the
process is this:

 1. Identify a kernel that works (6.6 in our case) and one that doesn't
    (6.12 for the present situation).  Call one that works version W and the
    one that doesn't F.

 2. Choose a kernel half way between W and F.  Build and test.

 3. If the new kernel works, set W to that kernel version.
    If the new kernel fails, set F to that kernel version.

 4. Go to step 2 until the earliest failing version is found.

In practice the "versions" used here are git commits but the principle
remains the same.  The git revision control system also greatly simplifies
this by automating the management of the versions.  Steps 2-4 come down
to answering a "did it work" question and recompiling/testing a new kernel.

If you do a web search on "linux kernel git bisect" you'll find many
tutorials which walk you through the process.

It would be *really* appreciated if you could give this a go as it should
identify the precise kernel commit that caused the problem.  I'm happy to
assist off-list if required.

Regards
  jonathan


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
