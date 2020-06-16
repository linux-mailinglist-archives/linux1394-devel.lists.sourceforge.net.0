Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF05202C07
	for <lists+linux1394-devel@lfdr.de>; Sun, 21 Jun 2020 20:46:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jn4z1-0005dh-Fr; Sun, 21 Jun 2020 18:46:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <James.Bottomley@HansenPartnership.com>)
 id 1jlDbl-0004Hr-Ut
 for linux1394-devel@lists.sourceforge.net; Tue, 16 Jun 2020 15:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ouXNo7Y6nrpXqefTTdGKcSOBD/NGUgOGgs1OtOsYFZs=; b=B0zhD4WWLZ8A95QcR6SybOHYO7
 pIQzN83FTtfjINrEcCglJ5aIMxMrfeepgLEHHllq1MgRoYCO3EwNVhm7jiO3ZMzjq+5ZyhuEvaxAY
 /+AuHzlBzmUsm10yGGyAA3NyZRl2khRoey7/fU7WIkXSumS5XfbfkAO08tsrRZ/O16Oc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ouXNo7Y6nrpXqefTTdGKcSOBD/NGUgOGgs1OtOsYFZs=; b=D87KjC1gyJ1TFKuj9l3d2UN9+m
 2ua9G/x1EU95q3EgNeCSZNwxjoBPHe0Tbbq7YiY46lMtWd/JbpdYqlDtewT/OWQXoytgMZW/aSk9p
 b9XH6V+wLAA5RaE1pFDH0IrfjEuePfEfF0vVOlWkIWg2E41MnGK+vN4whPEUQZNBpKqU=;
Received: from bedivere.hansenpartnership.com ([66.63.167.143])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jlDbj-005SU7-Cl
 for linux1394-devel@lists.sourceforge.net; Tue, 16 Jun 2020 15:34:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id C71AB8EE1E9;
 Tue, 16 Jun 2020 08:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1592321671;
 bh=ajob1nvDrla9Bt+f3LFtU00Hic0WFbZIYozt4cm3MGM=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=W1sBeQ80o/S7QYGmkg7NPKLODl9DIayewfvNHRL0KXkV4cKwIIId31zNmJSXEAOn8
 PmIczVXVyJ+XHkmj/F4XEVAvG601VQw6E+e3d1SlKbqVhn8CvXKJZo57Nbz5w9m9k9
 Fk0B2hGn7EnmgCplAjGFyBu8ncCam1gBtEW7wy9I=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id e-XsTU0ZWdDv; Tue, 16 Jun 2020 08:34:30 -0700 (PDT)
Received: from jarvis (unknown [216.116.10.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 4FE348EE188;
 Tue, 16 Jun 2020 08:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1592321670;
 bh=ajob1nvDrla9Bt+f3LFtU00Hic0WFbZIYozt4cm3MGM=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=MYUprjVWr66NFNYQM4jxBy/5blzUQem+8Me7nmbSL8D6xUxpHQ1bYjYJWGDOSQFMP
 0TrdM6NHXmZUCNnf60cYcNDgiCRbFbF2pklcj6OPtPybkwoQ7Zez969xlVSVJzMk5+
 XhrYEFkvrYKP8ysOE/5zvYdq13fP6HbGfoQDNx8k=
Message-ID: <1592321667.4394.5.camel@HansenPartnership.com>
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>, Bart Van Assche
 <bvanassche@acm.org>, Finn Thain <fthain@telegraphics.com.au>, Chris Boot
 <bootc@boo.tc>
Date: Tue, 16 Jun 2020 08:34:27 -0700
In-Reply-To: <SN4PR0401MB35982D889857E3C03E96E49D9B9D0@SN4PR0401MB3598.namprd04.prod.outlook.com>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
 <alpine.LNX.2.22.394.2006150919110.8@nippy.intranet>
 <8da0c285-d707-a3d2-063e-472af5cc560f@boo.tc>
 <alpine.LNX.2.22.394.2006161929380.8@nippy.intranet>
 <8cbab988-fba7-8e27-7faf-9f7aa36ca235@acm.org>
 <SN4PR0401MB35982D889857E3C03E96E49D9B9D0@SN4PR0401MB3598.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1jlDbj-005SU7-Cl
X-Mailman-Approved-At: Sun, 21 Jun 2020 18:46:21 +0000
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
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Chuhong Yuan <hslester96@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nicholas Bellinger <nab@linux-iscsi.org>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Tue, 2020-06-16 at 14:13 +0000, Johannes Thumshirn wrote:
> On 16/06/2020 16:09, Bart Van Assche wrote:
> > On 2020-06-16 02:42, Finn Thain wrote:
> > > Martin said, "I'd appreciate a patch to remove it"
> > > 
> > > And Bart said, "do you want to keep this driver in the kernel
> > > tree?"
> > > 
> > > AFAICT both comments are quite ambiguous. I don't see an
> > > actionable request, just an expression of interest from people
> > > doing their jobs.
> > > 
> > > Note well: there is no pay check associated with having a
> > > MAINTAINERS file 
> > > entry.
> > 
> > Hi Finn,
> > 
> > As far as I know the sbp driver only has had one user ever and that
> > user is no longer user the sbp driver. So why to keep it in the
> > kernel tree? Restoring a kernel driver can be easy - the first step
> > is a "git revert".
> 
> Why not move the driver to drivers/staging for 2 or 3 kernel releases
> and if noone steps up, delete it?

Because that's pretty much the worst of all worlds: If the driver is
simply going orphaned it can stay where it is to avoid confusion.  If
it's being removed, it's better to remove it from where it is because
that makes the patch to restore it easy to find.

Chris, the thing is this: if this driver has just one user on a stable
distro who complains about its removal six months to two years from
now, Linus will descend on us from a great height (which won't matter
to you, since you'll be long gone).  This makes everyone very wary of
outright removal.  If you're really, really sure it has no users, it
can be deleted, but if there's the slightest chance it has just one, it
should get orphaned.

James



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
