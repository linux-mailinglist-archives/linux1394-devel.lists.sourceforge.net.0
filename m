Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA43B8914FA
	for <lists+linux1394-devel@lfdr.de>; Fri, 29 Mar 2024 09:04:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rq7Dn-0005aY-V9;
	Fri, 29 Mar 2024 08:04:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rq7Dm-0005aF-C2
 for linux1394-devel@lists.sourceforge.net;
 Fri, 29 Mar 2024 08:04:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ANnxC5Ltf8crvgTrACaUhcyt5ac8W/yj/iYFIj0f9Nc=; b=Nh5kAcqn9zifpx7LdGWAMxtsNs
 Y6dtqXIAOetsYZNvB/QkrI0w3c4/C6BY7B37VwjktHUoiElIsQYey3ufJjc2RZqimHTOWAce7WucP
 s47EDVub0Jj2nOCFDcNjz/2DN1NXWg5Rw0YI2QJJA6tHDjcJAnGYh/l6DAXvIRKQi+w4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ANnxC5Ltf8crvgTrACaUhcyt5ac8W/yj/iYFIj0f9Nc=; b=QdW59CssNYASQDYmg1tsz5fOvf
 C0XS3MPGNMxx5tNCwHFawmnr6sbrtgcEz5PzUHKSdAxggT21qQyT+e7qIaPMlWdFb7yphewSuog5H
 K4FQz2aFTNAJ6SubSqym1P2iQvVVDYdb/8b7V98EzitzStwlUEYBXlq/a8de0ngu+PTQ=;
Received: from wfhigh3-smtp.messagingengine.com ([64.147.123.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rq7Dh-0005H8-8V for linux1394-devel@lists.sourceforge.net;
 Fri, 29 Mar 2024 08:04:17 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.west.internal (Postfix) with ESMTP id 5BEF918000B6;
 Fri, 29 Mar 2024 04:04:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Fri, 29 Mar 2024 04:04:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711699445; x=
 1711785845; bh=ANnxC5Ltf8crvgTrACaUhcyt5ac8W/yj/iYFIj0f9Nc=; b=J
 sv3YhaOp38/zjWHZElvpNVIa5jvZ+e99KT2Z+dAsePIcCrvSr9755rA3TguKi9B7
 a5PLpgn7TDZ8jPP2CYGS9x77K5O2CBTZIfIDtp1tTq8HzwyLI5PFQVqbWz2DxHyN
 Pjz7yAPzM/YLBg/6ymycQByysLZ7rXDKtBWKMCQWzd4vViAuzXTINuOnb42uy6/g
 4MMAgG3rl6GdKa1QWYpLizpAC1h9Q8t4VnNuUcoWps2Yz51mZFwmBKnpxXa1bOcI
 p7kXUO33gduUcNfLkAsGBrh71ZysPVSKh0/Y5fFQQiPhb4HDZCGECv+1ivsqpBhC
 n6F3edH8Y36jff3G+91Qw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711699445; x=1711785845; bh=ANnxC5Ltf8crvgTrACaUhcyt5ac8
 W/yj/iYFIj0f9Nc=; b=jfbno9EBjYyFTYu+Gw8jjM+f2P0uGgFz58xdoqPylfL1
 w3jJooiQvttfSRTdpkP6Sysep2ya0JIECGvg2Q6+VG2ndm7rNoPal5PvasDKTiaZ
 K5rhG4pNa8Ub9RDqqdChrINMZbXK6rfC4rlxwH6d3Xg2NGU7gmE2hH46hsGU9zsc
 WtqWidYdub2lpQLAIWgWPtmyfCyF5bg/+WqTeUOGlMReDjmqQ08jMAur89xJQrwK
 MhInBOhOhrI3XxqxM5hhBTPYIt9L57HF0PW9gS4CbHEnUTF9yy3b1ybrVZNxhmQ9
 VgQMgmsU4esJ3aT/omdKoWthkg7AusdJmAiFw6UEDw==
X-ME-Sender: <xms:9XUGZr28SBytj-5YvoFi3I7p7g_j5RG3-WXyrvyEhraQCQxCMWU9ww>
 <xme:9XUGZqFGvJBLLG5imNRtPdUzEP3fz0PcR_4QHrHzcuHyJllyJejTiERzX9ANNcRIl
 BvVNKExg0IWBrGTgrU>
X-ME-Received: <xmr:9XUGZr4Qa3lsYzKGukkws0WtLLfEIFR3f02JyJU6A4IEN6ZigbfF0IWvUS5OgDcVAYjbZt_XaxAqkKKhhee-scJV1PTOFwcpwA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvtddgieefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:9XUGZg1BrFu2NItNt4E3_s_uoF6N3h_vWkw64WPmdvrXJI0FANSE8g>
 <xmx:9XUGZuEkCUXb4UwDPRcr_GoX2QAwONNsP9VRz1i7031wMgUcm0FSRA>
 <xmx:9XUGZh92WTp5iBYU8WmvboPOvaf0RnwWsGFga8hteQ3KMP7OXxp-Zg>
 <xmx:9XUGZrm2aHHIhALUTsrpwp3-oBWECdNj3BFBjIHppONSmBzmGg-oIg>
 <xmx:9XUGZsakF7j5qbsF8S6bQhTu3HF1UBwGkKbAQBi4LsZ59ulanQGxfhLt8DU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 29 Mar 2024 04:04:03 -0400 (EDT)
Date: Fri, 29 Mar 2024 17:04:00 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH] Revert "PCI: Mark LSI FW643 to avoid bus reset"
Message-ID: <20240329080400.GA231329@workstation.local>
Mail-Followup-To: Bjorn Helgaas <helgaas@kernel.org>,
 linux-pci@vger.kernel.org, Edmund Raile <edmund.raile@proton.me>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux1394-devel@lists.sourceforge.net
References: <20240328212302.1582483-1-helgaas@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240328212302.1582483-1-helgaas@kernel.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 28, 2024 at 04:23:02PM -0500,
 Bjorn Helgaas wrote:
 > From: Bjorn Helgaas <bhelgaas@google.com> > > This reverts commit
 29a43dc130ce65d365a8ea9e1cc4bc51005a353e.
 > > 29a43dc130ce ("PCI: Mar [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.154 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rq7Dh-0005H8-8V
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Edmund Raile <edmund.raile@proton.me>,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Thu, Mar 28, 2024 at 04:23:02PM -0500, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> This reverts commit 29a43dc130ce65d365a8ea9e1cc4bc51005a353e.
> 
> 29a43dc130ce ("PCI: Mark LSI FW643 to avoid bus reset") by Edmund was based
> on the assumption that the LSI / Agere FW643 has a defect such that it
> can't recover after a Secondary Bus Reset (SBR).
> 
> But Takashi Sakamoto reported that SBR works fine on this same FW643 device
> in an AMD Ryzen 5 2400G system, so apparently there is some other aspect of
> Edmund's system that accounts for the issue.
> 
> The down side of 29a43dc130ce is that when the FW643 is assigned to a VM,
> avoiding the SBR means we leak data out of the VM.
> 
> Revert 29a43dc130ce until we figure out a better solution.  In the
> meantime, we can use the sysfs "reset_method" interface to restrict the
> available reset methods.
> 
> Fixes: 29a43dc130ce ("PCI: Mark LSI FW643 to avoid bus reset")
> Reported-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> Link: https://lore.kernel.org/r/20240325012135.36861-1-o-takashi@sakamocchi.jp
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> ---
>  drivers/pci/quirks.c | 8 --------
>  1 file changed, 8 deletions(-)

Reviewed-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>

Thank you for the revert patch, and I apologize for the delay in catching
up with the change. Please feel free to add me or the linux1394-devel list
to CC of these kind of changes.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
