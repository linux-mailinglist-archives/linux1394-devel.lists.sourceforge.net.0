Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC9F97050D
	for <lists+linux1394-devel@lfdr.de>; Sun,  8 Sep 2024 06:26:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sn9VC-0003YV-Hr;
	Sun, 08 Sep 2024 04:26:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1sn9VB-0003YP-Al
 for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Sep 2024 04:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=piC69DJmphg82OCL72e+43HjVKikhKgfvZQ7h6yPaL4=; b=UL5pBnbwBZNqhXC3L2/Br8GiuS
 Z5bGoapYMGrfppmwtdWoMx5dHxB+4loqXdpbUeaXTKj2/UkgIy+0oejWvyZck3o2MVpVew0vgaVsz
 TxqXToZK3V/gkMela3l6KxiDlHkl5qY2KJBY5OGigrUrrjr+qXrP2lCgvEO9vWCpfol8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=piC69DJmphg82OCL72e+43HjVKikhKgfvZQ7h6yPaL4=; b=XECxhhJ8cSppD9a6+8rn4HZZ8n
 GLSVPcMPfmD247sIc2U24tH793lMBYc/3PZLsFyQ//2daBREJVPhHdOoGZam8ty8zLJmGaZbJdzh5
 V3oND1JSIIQn579x43qxhJ2OFv2LNqfFj8gXGv/7HoCdsS+sWvG/vvNhDUAb3sprSXyE=;
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sn9VB-0001EK-9f for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Sep 2024 04:26:18 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id ABBA631B55;
 Sun,  8 Sep 2024 00:26:10 -0400 (EDT) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=jThvTv4xVtySVUpxU0bCZlRIVnMFU7MECGcu5w0
 bfHE=; b=a9Ndc5+QwT+90UyJYGBQxKKlnrTNGaF1l7PimVx6/y5GLrA0S/soM29
 /JBYIJWI3aUiBYHBtIZGL3JOncm1hEefxXkEMZ6XUGlXxsVIM6ZxlRxilSYbFYgN
 lAWVGzCv8lHv1A7EsgOXekwZfMQTfKaVEGQflaCUmZ7i/4LubIzQ=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id A356D31B54;
 Sun,  8 Sep 2024 00:26:10 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 2726E31B53;
 Sun,  8 Sep 2024 00:26:10 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 0BFDCC0155;
 Sat,  7 Sep 2024 21:26:09 -0700 (PDT)
Date: Sat, 7 Sep 2024 21:26:07 -0700
From: Adam Goldman <adamg@pobox.com>
To: Andrew Ferguson <andrewferguson500@gmail.com>
Subject: Re: Bug report: Mac Target Disk Mode not working in some cases
Message-ID: <Zt0nX2pWrK-Jesxn@iguana.24-8.net>
References: <CAFvb365w5QXB8kGizFjytkg+Ag_bY_SB5B3LhHx2wSt7dtL1TQ@mail.gmail.com>
 <ZtLpkQguwX2I19rI@iguana.24-8.net>
 <CAFvb367Ov3PN0g2cZm+QOWBk9_cH02ovO63h0GiOs76wwSov_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFvb367Ov3PN0g2cZm+QOWBk9_cH02ovO63h0GiOs76wwSov_g@mail.gmail.com>
X-Pobox-Relay-ID: 797353A8-6D9A-11EF-A411-9B0F950A682E-07713566!pb-smtp2.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Sep 02, 2024 at 05:07:40PM +0100, Andrew Ferguson
 wrote: > Adam,
 would you be willing to send me the serial number of the PowerBook
 G4 > you used? That lets me see all of the specs and whether [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sn9VB-0001EK-9f
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

On Mon, Sep 02, 2024 at 05:07:40PM +0100, Andrew Ferguson wrote:
> Adam, would you be willing to send me the serial number of the PowerBook G4
> you used? That lets me see all of the specs and whether or not it is
> similar to mine. Separately (and very much a n00b question!), what's the
> best / easiest way to get kernel version 6.8-rc1? is there a specific
> distro that ships with development / rc builds of the kernel, or is it
> better to install something like Debian Stable and then compile / install a
> development build? Ideally I'd replicate your setup to confirm it isn't an
> issue on my end.

Hi Andrew,

Sorry for my late reply.

My PowerBook G4's serial number is QT23727VLP4.

This is my recipe for building kernels from kernel.org tarballs on 
Debian Bookworm:

sudo apt-get install build-essential
sudo apt-get build-dep linux
tar xzf linux-6.11-rc1.tar.gz
cd linux-source-6.11-rc1
cp /boot/config-6.1.0-15-amd64 .config
scripts/config --enable DEBUG_INFO_NONE
scripts/config --disable DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT
scripts/config --disable CONFIG_DEBUG_INFO_BTF
scripts/config --disable SECURITY_LOCKDOWN_LSM
scripts/config --disable MODULE_SIG
make olddefconfig
make clean
make bindeb-pkg

Note that the upstream kernel source contains a build script for Debian 
packages.

However, Debian has their own, different procedure for building 
development kernels:

https://kernel-team.pages.debian.net/kernel-handbook/ch-common-tasks.html#s-common-official-vcs

I've also tested with 6.11-rc1 now. Again, the Linux box was able to 
access the PowerBook's drive over Firewire. I was able to mount sdb10 as 
an hfsplus filesystem and see the contents.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
