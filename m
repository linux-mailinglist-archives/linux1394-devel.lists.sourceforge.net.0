Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD1687E2D7
	for <lists+linux1394-devel@lfdr.de>; Mon, 18 Mar 2024 05:46:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rm4tL-0004Bs-4P;
	Mon, 18 Mar 2024 04:46:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rm4tK-0004Bi-46
 for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Mar 2024 04:46:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xhipH5R8dCuM4+XsucMJnjuzsIp1WFZtYIsfPrV6uAk=; b=hH+dqTnvNNsKxArBFrwOTIlFzD
 78CwjCeSJKztb/Vm4b531M3KHM09xAvCsjoiPpsz+w36ZYB56bV2L/70UN7kAvdOyYZQoBgfZEBoR
 mQNQA/el0jaJ5y9+0E3gLys86twpVCmA1qD4ze83ka9erBpd0Rps40BWcWcPrLwGpFlM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xhipH5R8dCuM4+XsucMJnjuzsIp1WFZtYIsfPrV6uAk=; b=galmJLEQheiNGqsjjfyC4VY7nu
 SSkk5NgZxa+w9AXQhIZPZSDTw3acVmFblD9eueExm7ckrTD5FmWsMSp8kJFtQd5pwZwS9DMBkhDdH
 yJB2Sje/Bs79+Lbyi9KkUOsqeTXbe6at0XoOpH8DjlrMT2JMVNRM+yUcqbUabwti5YXg=;
Received: from wfout6-smtp.messagingengine.com ([64.147.123.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rm4t7-0002Ga-Pz for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Mar 2024 04:46:30 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.west.internal (Postfix) with ESMTP id 4577E1C000B9;
 Mon, 18 Mar 2024 00:46:14 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 18 Mar 2024 00:46:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm2; t=1710737173; x=1710823573; bh=xhipH5R8dC
 uM4+XsucMJnjuzsIp1WFZtYIsfPrV6uAk=; b=CeNRQD4NiHE18F6/sRelJJjZTn
 SGtLf29mrIwZV6SRIDQmZqjzsuWSccB8VzmO9v9NbGH1yN6PM/6EdJIO8S4AHL54
 An+Abs/am2655XpiITrnJxT3VuvJNSBDR+sFXNbzHTM+SV/pCRlOlRxKch2i1JuJ
 7r6IcvyLs/3ggQQ985DHizczhK1+zwlBxR1geRQgi7zd18z+INM52/FuZ2aAasYc
 j/XrO74Iyvy/BqUHuaoQZSWQGAFwH3KDI8G/vT9DijrE+HgfRS+udFHH0FEwZLsz
 CdD7ZpB5aPAF4Wsb3uks9sQISlvC7oCwdjGeV2dS+VHEjogg8TcSrUpIBaSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1710737173; x=1710823573; bh=xhipH5R8dCuM4+XsucMJnjuzsIp1
 WFZtYIsfPrV6uAk=; b=cKHwx+kvtdwvLsL9zol1O5iwU5QaXpxO3F9N0t0AD/k1
 /k4YbvBrHHTc9aly9woJRjd/8xTLoaxEso905WlXNUKVrr+V5Z7Wlck8JSkLriF8
 bIYOF/WAq8FjC7nqyLNjZr5DqoZbaak3bFUroJa5hjRbd5V9p58NeuD2VRq9O7xi
 bVCdR5uqBn/qjLCk7Q7qsExR4Z3Fm+gfnrVVwcwri++v2iQKpC3ndKXLDkDvRw+K
 HQrJufsEO7Zx8T2q4SLzs9YAMw4CJViETn7eLeuhnR2XVJxJSYPDWRLeV+Hf9S04
 ZvJiJd7fx1ytpCskjzqOxoLu0vztPRt3drf2IPzzQA==
X-ME-Sender: <xms:Fcf3ZTAxjNrDhgEXhNobdPjZ6meeJ9ISjlPNgk_JBQqgqCwftvHncw>
 <xme:Fcf3ZZgtGEI0FVYj8KnMwsa5JbLnPjELvI9OZcostK1oHLcaA4h1XS4z3Guk8Fd0G
 X4uNz77vsUl1aq649o>
X-ME-Received: <xmr:Fcf3ZelRwqyblbDVaxkmitedrMb8pFU1vsMSm3Ru1D-hwW-CJzofbyCadaExmbpb5TAOZ3Nf3DaUZDeJxtxCCZZXbtsC_5dvfro>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrkeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnheplefhueegvdejgfejgfdukeefudetvddtuddtueeivedt
 tdegteejkedvfeegfefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:Fcf3ZVyiA_os9oEkwxCQGDsEagtPTLEGZq1Ksg_m39N8blnh5EqLhA>
 <xmx:Fcf3ZYSNfmixv_8HvohEbB-BisvpVq2m_w6JsDpus1G5O7cgwHWlwg>
 <xmx:Fcf3ZYZ1nZ89m57C-UlGagougelF_HWOV2tezuiD4oXsayKSagk2tw>
 <xmx:Fcf3ZZT_xmuK4DDVi-H-vvDEDRRgdO97JWCNf1Noj6Nporss76aDSg>
 <xmx:Fcf3ZeNsua5jGmrPZGFTHu9n24beHzHNHwO4hzxojN9MK7vYCsXVR5pY83U>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 18 Mar 2024 00:46:12 -0400 (EDT)
Date: Mon, 18 Mar 2024 13:46:09 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Li Zhijian <lizhijian@fujitsu.com>, linux-kernel@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 1/2] firewire: Kill unnecessary buf check in
 device_attribute.show
Message-ID: <20240318044609.GA659599@workstation.local>
Mail-Followup-To: Li Zhijian <lizhijian@fujitsu.com>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
References: <20240122053942.80648-1-lizhijian@fujitsu.com>
 <20240122085604.GA254251@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240122085604.GA254251@workstation.local>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Jan 22, 2024 at 05:56:04PM +0900,
 Takashi Sakamoto
 wrote: > Hi, > > On Mon, Jan 22, 2024 at 01:39:41PM +0800, Li Zhijian wrote:
 > > Per Documentation/filesystems/sysfs.rst: > > > sysfs allocat [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.149 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rm4t7-0002Ga-Pz
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

Hi,

On Mon, Jan 22, 2024 at 05:56:04PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> On Mon, Jan 22, 2024 at 01:39:41PM +0800, Li Zhijian wrote:
> > Per Documentation/filesystems/sysfs.rst:
> > > sysfs allocates a buffer of size (PAGE_SIZE) and passes it to the
> > > method.
> > 
> > So we can kill the unnecessary buf check safely.
> > 
> > Signed-off-by: Li Zhijian <lizhijian@fujitsu.com>
> > ---
> >  drivers/firewire/core-device.c | 14 +++-----------
> >  1 file changed, 3 insertions(+), 11 deletions(-)
> 
> Applied both patches to linux-next branch, since they are not so-urgent 
> fixes.

I realized that it causes an issue at the path to initialize device
structure for node in IEEE 1394 bus.

(drivers/firewire/core-device.c)
fw_device_init() / fw_device_refresh()
->create_units()
  ->init_fw_attribute_group()
    ->attr->show(dev, attr, NULL)

kernel: ------------[ cut here ]------------
kernel: invalid sysfs_emit: buf:0000000000000000
kernel: WARNING: CPU: 5 PID: 647501 at fs/sysfs/file.c:747 sysfs_emit+0xb5/0xc0
kernel: Modules linked in: snd_fireworks(OE) snd_firewire_lib(OE) firewire_ohci(OE) firewire_core(OE) cfg80211 veth nft_masq crc_itu_t vfio_pci vfio_pci_core vfio_iommu_type1 vfio iommufd rpcsec_gss_krb5 nfsv4 nfs netfs snd_seq_dummy sn>
kernel:  crypto_simd asus_wmi snd_timer ledtrig_audio cryptd cec sparse_keymap nls_iso8859_1 rapl platform_profile wmi_bmof k10temp i2c_piix4 snd rc_core i2c_algo_bit ccp soundcore zfs(PO) spl(O) input_leds joydev cdc_mbim cdc_wdm mac_h>
kernel: CPU: 5 PID: 647501 Comm: kworker/5:0 Tainted: P        W  OE      6.8.0-11-generic #11-Ubuntu
kernel: Hardware name: System manufacturer System Product Name/TUF GAMING X570-PLUS, BIOS 5003 10/07/2023
kernel: Workqueue: firewire fw_device_workfn [firewire_core]
kernel: RIP: 0010:sysfs_emit+0xb5/0xc0
kernel: Code: 25 28 00 00 00 75 29 c9 31 d2 31 c9 31 f6 31 ff 45 31 c0 45 31 c9 e9 5a 89 c7 00 48 89 fe 48 c7 c7 64 06 3f bd e8 1b 80 b4 ff <0f> 0b 31 c0 eb c7 e8 a0 ea c5 00 90 90 90 90 90 90 90 90 90 90 90
kernel: RSP: 0018:ffffacd857103cd0 EFLAGS: 00010246
kernel: RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
kernel: RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
kernel: RBP: ffffacd857103d20 R08: 0000000000000000 R09: 0000000000000000
kernel: R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000010000
kernel: R13: ffffffffc28e2ff8 R14: 0000000000000000 R15: 0000000000000001
kernel: FS:  0000000000000000(0000) GS:ffff918190080000(0000) knlGS:0000000000000000
kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
kernel: CR2: 00007835dca0b048 CR3: 00000003cb898000 CR4: 00000000003506f0
kernel: Call Trace:
kernel:  <TASK>
kernel:  ? show_regs+0x6d/0x80
kernel:  ? __warn+0x89/0x160
kernel:  ? sysfs_emit+0xb5/0xc0
kernel:  ? report_bug+0x17e/0x1b0
kernel:  ? handle_bug+0x51/0xa0
kernel:  ? exc_invalid_op+0x18/0x80
kernel:  ? asm_exc_invalid_op+0x1b/0x20
kernel:  ? sysfs_emit+0xb5/0xc0
kernel:  show_immediate+0x13f/0x1d0 [firewire_core]
kernel:  init_fw_attribute_group+0x81/0x150 [firewire_core]
kernel:  create_units+0x119/0x160 [firewire_core]
kernel:  fw_device_init+0x1a9/0x330 [firewire_core]
kernel:  fw_device_workfn+0x12/0x20 [firewire_core]
kernel:  process_one_work+0x16f/0x350
kernel:  worker_thread+0x306/0x440
kernel:  ? __pfx_worker_thread+0x10/0x10
kernel:  kthread+0xf2/0x120
kernel:  ? __pfx_kthread+0x10/0x10
kernel:  ret_from_fork+0x47/0x70
kernel:  ? __pfx_kthread+0x10/0x10
kernel:  ret_from_fork_asm+0x1b/0x30
kernel:  </TASK>
kernel: ---[ end trace 0000000000000000 ]---
kernel: ------------[ cut here ]------------

Furthermore, 'show_text_leaf()' returns negative value when the NULL
pointer is passed. It results in the lack of vendor/model names from
sysfs.

I absolutely overlooked them. I would like to fix them within this merge
window, or revert them as a last resort...


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
