Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3137AE1008
	for <lists+linux1394-devel@lfdr.de>; Fri, 20 Jun 2025 01:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LHKHCDwHqFswwDridYZiU5D6mRw3uRih30CuNcEkdOQ=; b=SaSsvReiBazT+nhFp/cc66nMlX
	UW7WJS98l9PzSkHrZLkB3GDsEzumfZBZOYq+gaYrN4/WsD5plaCJm2Ui+o/SCT+M7CIwmpGU70xUs
	7qF463ej3/HUVGuvk/KcDGVMHbIjEQeTlalLbDBG2xKD3KSVAbzetBo0DWGUSQ15ws9c=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uSOb0-0005qx-A2;
	Thu, 19 Jun 2025 23:23:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jwoithe@just42.net>) id 1uSOax-0005qh-Uz
 for linux1394-devel@lists.sourceforge.net;
 Thu, 19 Jun 2025 23:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VNBCMnJZAXjiOmUCVEtXf0Un04PxzSEot7xhsY6Fw6M=; b=jbCLZ9Ch2PdYOld0BI4/PzWJpO
 2neS9u+MFYhSRBZ075lbAnOxLADh0VVkyLyVTeTwci/S5shJgbRImDMrPZVn0rJMtFfuw9mcfX23F
 ek40y/mA5PXB2qFB6pM+MwV/PoPoSwg0IdGz5aswFtOXxhLSUgcqQ6g4z8rBxg7QCns4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VNBCMnJZAXjiOmUCVEtXf0Un04PxzSEot7xhsY6Fw6M=; b=U
 7gVSRqj2l0WQevHdwXGuYl6MuKo7dmbkQcqZ7Nf8fxGhuSFGe24g9YF+djX3w8LV7xtF1t++Sc9N/
 fi7exAJyj+b+hLkFyBSXMbJw3i39KEoPHm1KhC+JKYH+hCbOlzadf1lNCky4di+whC7g1BmfRDkis
 E2NBg6404XXE6GLw=;
Received: from server.atrad.com.au ([150.101.241.2])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uSOax-0000HK-26 for linux1394-devel@lists.sourceforge.net;
 Thu, 19 Jun 2025 23:22:59 +0000
Received: from marvin.atrad.com.au (marvin.atrad.com.au [192.168.0.2])
 by server.atrad.com.au (8.18.1/8.18.1) with ESMTPS id 55JNMgjb023818
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <linux1394-devel@lists.sourceforge.net>; Fri, 20 Jun 2025 08:52:45 +0930
Date: Fri, 20 Jun 2025 08:52:42 +0930
From: Jonathan Woithe <jwoithe@just42.net>
To: linux1394-devel@lists.sourceforge.net
Subject: Possible regression with the FW643 chipset
Message-ID: <aFSbwoRkxkISumSk@marvin.atrad.com.au>
MIME-Version: 1.0
Content-Disposition: inline
X-MIMEDefang-action: accept
X-Scanned-By: MIMEDefang 2.86 on 192.168.0.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all The FFADO project has received several reports from
 people running recent kernels which suggest the kernel has stopped detecting
 bus resets when a PCIe FW643 host controller is in use, and (perhaps as [...]
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1uSOax-0000HK-26
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi all

The FFADO project has received several reports from people running recent
kernels which suggest the kernel has stopped detecting bus resets when a
PCIe FW643 host controller is in use, and (perhaps as a result) is failing
to enumerate devices on the bus.  This was first reported by a user running
Fedora 42.  When running Fedora 41 their system would detect firewire
devices without any issues, and /dev/fw1 was created.  When they upgraded to
Fedora 42, however, /dev/fw1 wasn't being created and the system logs didn't
contain any messages from the firefire subsystem to indicate that any
devices had been seen.

Another user running Endeavour OS also reported the same trouble.

The failure to detect devices applied when devices were connected at boot
and if they were plugged in sometime after booting.

Follow up discussions suggest that kernel 6.6 is okay while 6.12 and all
versions which follow it are not.  The problem only seems to affect users
with FW643 host controllers.  The precise kernel version that first
displayed the symptoms is not yet identified.

For those affected by this issue and running kernel 6.14.5, the following
command sequence usually results in a correctly functioning firewire system:

    sudo modprobe -r firewire-ohci
    sudo modprobe -r firewire-core
    sleep 2
    sudo modprobe firewire-ohci

It has been reported that this does not work in 6.14.3 or 5.14.4.

Since the reporters are not developers, the kernels they have access to are
limited to those supported out of the box by their distributions.  A git
bisect will only be possible if someone with the requisite knowledge can
also reproduce the problem.  The information to hand at present is therefore
somewhat incomplete.  It may take some time to obtain a clear picture of
what might be going on.

Unfortunately I don't personally have a FW643 host controller so I am not
able to investigate this myself.  For what it's worth, the 6.12.26 kernel is
fine for me when using a TI PCI host controller.

At this stage I was wondering whether there have been any changes between
the 6.6 and 6.12 kernels within the firewire subsystem (or maybe the PCIe
subsystem) which could have inadvertently caused this issue with FW643 host
controllers.

Alternatively, are there any FW643 users who have no problem with device
detection under a 6.12.x (or later) kernel?  If so this would conclusively
rule out a kernel issue.

Regards
  jonathan


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
