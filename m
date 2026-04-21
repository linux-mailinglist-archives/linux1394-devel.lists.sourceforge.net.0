Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCgxMIVz52ke8AEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Tue, 21 Apr 2026 14:54:29 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B21C943AE42
	for <lists+linux1394-devel@lfdr.de>; Tue, 21 Apr 2026 14:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cKkjXcfESs2wI8f0z7pArWNG6An1z0iP215p2e75dZ0=; b=HGi+3Cm8/+TBFRAypZuEY3VmBW
	N4PnjN/SibS/eABrXARoYsSP0KMYtrCCs3p/aw4ode3iFYgJnr6YFUZZWKx4SpIczx2mkcgyesyxQ
	QV5c2SMnNULkIL8kOfS8+/Mip14Ssuf8hE0O1CYHui2M23qnur1jTxYQ+FXEgwOVhVRg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wFAcN-0004Nj-SB;
	Tue, 21 Apr 2026 12:54:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wFAcL-0004Nb-OX
 for linux1394-devel@lists.sourceforge.net;
 Tue, 21 Apr 2026 12:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=djC/dEPE2AYmdFyhcKi2RGjfR1iKIsQJOcUjzkIu3KY=; b=KIpQDITzvVYeDKPrur2VK3q30+
 N6i12EqF1pvA+RNFP9MbkxgrGV/C8+otEDHOs98whOxuAMzoeIiI6rHNvgKNSixxoO2HXFcd5974c
 ehapSmOiMNWx5k805XWb91vBP/Z8QTNic9UdtDLIqzQdsQIjMSAUKRS0kcK6LnRq28T8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=djC/dEPE2AYmdFyhcKi2RGjfR1iKIsQJOcUjzkIu3KY=; b=Er2j3+AlyDiuKE/P8PgpGiayj3
 BtHejdGs4M7eDY+OsH9vVGMkl8vTpQ2mLi8Un5HXZiibw2wEJYkFVqVcojb3SAQ5r+5GVWqQA32SV
 k5WStsiRvheJI4O6+d8G2ujuphKKi9Q9vvU0Dqx3VHPM159QxUadGMRRRPFpstJmCG28=;
Received: from fhigh-a1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wFAcH-0004E4-SE for linux1394-devel@lists.sourceforge.net;
 Tue, 21 Apr 2026 12:54:15 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 126A81400123;
 Tue, 21 Apr 2026 08:54:03 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-09.internal (MEProxy); Tue, 21 Apr 2026 08:54:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1776776043; x=
 1776862443; bh=djC/dEPE2AYmdFyhcKi2RGjfR1iKIsQJOcUjzkIu3KY=; b=y
 8zNR6lPix7/ZzSrcS+9vCp7Z4CNfw7U21SIxxs6cbFGmy0ESBqR5BLCxtjXJUgZ2
 ii/80ScLBHe82yuf2nQ3gRQTkdKPGQuqtBHBq6EMfN9Fi6x7NYrk5TXT3zn06y0k
 wvlIhvHh6bEt5WbXBz6/kytK8ob7gfE7NYwXHLa3gFQ/EBgmSKeE0iU3m1YHSmIJ
 pFMAkSWIc060VoY8XoUiOJjLBJVVTENtUfHUaTPe12i7plDo70uxQD9KKbKIb+aq
 jB8dih7w54UnZW0lHBFFDLPda9w53NbSz9bt+pK2M8TzcoAdnAl8AA3lb+MqeguJ
 c/xl/y1G9huX1QZO2Aopw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1776776043; x=1776862443; bh=djC/dEPE2AYmdFyhcKi2RGjfR1iKIsQJOcU
 jzkIu3KY=; b=Q8ydyVqSqDqGKfRpNdWRu2gffJxKbVOxfSgl3RHqWIKYDepNxW6
 hgdEvgH88xzCSGGeM9KDweB63Z0O6FsJZCO0xif7Z6fDL232LDvn+mzHkEtwJF2u
 EGYZAYltoFyANCQT/ryG2BrJKCl8yjo0kMHMqKjXlvRtuc0RyR6EdCJRZ9PLD+Qy
 jvltytmTvSmO3UIOxFPi/G2bRHNUOKOI1xNCm/x/5xJE304zqOMuPculUqWQDzc8
 52TkKCTfJHGuXhTA7YPe3jsUshOm7m7wJVr4r9jSx4rt0ZBgn6PpX+K5txLvJkfQ
 NZCotQbMJxZoogHIp1tNyNzfPZpJL5KljaA==
X-ME-Sender: <xms:anPnaUTjs5s603qP49FZyoAxoyO_DtrouxNzDtJLROh5usMvfunfeg>
 <xme:anPnaXxTeT1hw7hhk9WZpblg-LQLAQJjBJTaFvk0Ugfl75g3vu6lX94pdrR15cnq_
 yKyr8jFEjR8xr25YlpNvltIjEYX8oDEqyMxKy686AQqeE9CHO9c0KWb>
X-ME-Received: <xmr:anPnacpcuj_uLFx60DH-6K8gz6vYcv9ktun6LbBwPYf2TYKDc1gPEuWJDF6QljvZejuSxSqmwa1iRzkXEKrBXfD3FaG5FnU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeiudeggecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhi
 ucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqe
 enucggtffrrghtthgvrhhnpedtkeelheefffdvueegveegieevtdfhleegudetffektedt
 vefgteegffelkeefgfenucffohhmrghinhepghhithhhuhgsrdgtohhmpdhmohhrvghllh
 hoqdhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
 pehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnh
 gspghrtghpthhtohepuddtpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlkhes
 tgdqqdgvrdguvgdprhgtphhtthhopehurdhklhgvihhnvgdqkhhovghnihhgsegsrgihlh
 hisghrvgdrtghomhdprhgtphhtthhopegtlhgvmhgvnhhssehlrgguihhstghhrdguvgdp
 rhgtphhtthhopehpvghrvgigsehpvghrvgigrdgtiidprhgtphhtthhopehtihifrghise
 hsuhhsvgdrtghomhdprhgtphhtthhopegthhhrihhsthhirghnrdgvhhhrhhgrrhguthes
 tghouggrshhiphdrtghomhdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlse
 hlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidq
 shhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopeifshgrodhrvg
 hnvghsrghssehsrghnghdqvghnghhinhgvvghrihhnghdrtghomh
X-ME-Proxy: <xmx:anPnaa0OYQrLOT3xEum-2HkwXRzhGQyXESsgF7HbYEY5mEgqFJ9xMA>
 <xmx:anPnacxvebXGIa5iL7v-M2ex1tCJil45olVosxeq7b_ygRNTJ2WnNw>
 <xmx:anPnaehnrrleuyLBiHza5hYZ2IozXoiBTuy1NEgtziZETqWRJdg5TQ>
 <xmx:anPnaXrxyrF3wrHic-PLisIrwEc3DE4xu5cMu06xngqj-Lf1Uw0Lvg>
 <xmx:a3PnadmdbQjHbTwgOOyX7TtCNLyXIJJd-6-AWtyhfhAVtDDQa8UiocDM>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 21 Apr 2026 08:53:59 -0400 (EDT)
Date: Tue, 21 Apr 2026 21:53:57 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "Christian A. Ehrhardt" <lk@c--e.de>
Subject: Re: [PATCH v1 0/2] firewire: Simplify storing pointers in device id
 struct
Message-ID: <20260421125357.GA46532@sakamocchi.jp>
Mail-Followup-To: "Christian A. Ehrhardt" <lk@c--e.de>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>, 
 Clemens Ladisch <clemens@ladisch.de>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 "Christian A. Ehrhardt" <christian.ehrhardt@codasip.com>,
 linux1394-devel@lists.sourceforge.net, linux-sound@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <cover.1776579304.git.u.kleine-koenig@baylibre.com>
 <20260420090816.GA11108@sakamocchi.jp>
 <aeZk1I3DTmyx_ZUL@cae.in-ulm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aeZk1I3DTmyx_ZUL@cae.in-ulm.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Apr 20, 2026 at 07:39:32PM +0200, Christian A.
 Ehrhardt wrote: > > Hi, > > On Mon, Apr 20, 2026 at 06:08:16PM +0900, Takashi
 Sakamoto wrote: > > Just out of curiosity, what does the CHERI exte [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [103.168.172.152 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wFAcH-0004E4-SE
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org,
 "Christian A. Ehrhardt" <christian.ehrhardt@codasip.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>, Jaroslav Kysela <perex@perex.cz>,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [0.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lk@c--e.de,m:andriy.shevchenko@linux.intel.com,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:christian.ehrhardt@codasip.com,m:wsa+renesas@sang-engineering.com,m:u.kleine-koenig@baylibre.com,m:perex@perex.cz,m:linux1394-devel@lists.sourceforge.net,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[10.202.2.163:received,10.202.2.49:received];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid]
X-Rspamd-Queue-Id: B21C943AE42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Mon, Apr 20, 2026 at 07:39:32PM +0200, Christian A. Ehrhardt wrote:
> 
> Hi,
> 
> On Mon, Apr 20, 2026 at 06:08:16PM +0900, Takashi Sakamoto wrote:
> > Just out of curiosity, what does the CHERI extension adopted to RISC-V
> > architecture require in terms of kernel programming? Is taking extra
> > care when storing pointer values in long-type variables sufficient in
> > driver code?
> 
> That is a significant part but there is more to it (entry code,
> register size changes, the UABI should better be CHERI aware, ...).
> 
> But the issue that a pointer does not fit into an unsigned long
> is an issue that pops up all over the kernel while most other
> changes are more localized.
> 
> There is a working linux kernel in the CHERI alliance github here:
>    https://github.com/CHERI-Alliance/linux/tree/codasip-cheri-riscv-6.18
> That definitely needs more cleanup but it does work.
> Previous work from ARM for the morello project (another CHERI
> enabled platform) is available here:
>    https://git.morello-project.org/morello/kernel/linux
> These should give a rough idea of what is required.
> 
> Fixing unsigned long vs. uintptr_t issues helps a lot with this
> because it reduces the diff. But it is also a general cleanup.

Thsnks for the references. It looks like there is not much to consider
outside of mm subsystem. But I have some concerns if supporting
ARM/RISC-V adoptation of CHERI extension in Linux FireWire subsystem.

Any structures in UAPI header of this subsystem are defined with
an assumption that the size of pointer in the existing System V
architectures is up to 64 bits at most. We can see many usage of
'__u64' type member for pointers (e.g. 'rom' in fw_cdev_get_info
structure). I imagine to need defining specific structures for this kind
of 'fat' pointer. (The same assumption lays on compat ioctl.)

As another concern is that the padding in structure. As long as I know,
any 64 bit architecture for System V ABI has 8 bit alignment rule, and
any structure in UAPI header of this subsystem are carefully defined not
to have different sizes between x86/32bit/64bit architectures, except for
'fw_cdev_event_response' structure (see 'drivers/firewire/uapi-test.c').
As a quick glance, the size of pointer in ARM CHERI extension seems to be
129 bit. In this case, what size of alignment rule is applied? Is there
7 bit padding after pointer member in any aggregates?


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
