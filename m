Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id tpLrCJLx0GlzCgcAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Sat, 04 Apr 2026 13:10:10 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C9A39AE79
	for <lists+linux1394-devel@lfdr.de>; Sat, 04 Apr 2026 13:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=djsZ2x/lGN9UKcYifkX94z15yjHKNgS2CqY/CwPlu3M=; b=JltIVeLf+asrjrXcFrpoajo+Ed
	LIyKE1gexHXwO3gUgn52RzSp7UtvsioIZKxbL4fqCojk04Jb2bsPsXQ3bbUdic3fe7XO0drJclW6c
	81ukbSyenFPuPvh48xjjttekhgdNDTZFl4zDXwWjJIPQSPKX6OuTG0j2t2oW0iV2U+LA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1w8yt0-0007vS-Sm;
	Sat, 04 Apr 2026 11:09:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1w8ysz-0007v4-2U
 for linux1394-devel@lists.sourceforge.net;
 Sat, 04 Apr 2026 11:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gHdXgRE4TlI2zCfmFmLudFXkXOiU5i41/LZ1D7hEfO8=; b=R3vUXAtAJ99SyzTCdhcnLcDOuc
 wTcn1TVX9X1AUCMGTxq2ldfqlcGNYvFOVjTs2tnTj2jigVgW1NWMX0m4OZwebydhVVGMjdxiWktaP
 nSq7jVFuCzrPaCCpGIrzkW1TAqKMMm0H+zMFyPZyNudWVcJK4SZ5Q3jz5/1CNLZt6NIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gHdXgRE4TlI2zCfmFmLudFXkXOiU5i41/LZ1D7hEfO8=; b=e+VUwul5WCCmjrM5Bn07QqQj0c
 pmddaIJ4LUHCgNdgnPKvQbpugsUb59250NxTA2ltJ0G93xDLKdTaLXhmkGt1V9swkYFdMLtq6dq0u
 fPNToNhBmuBfPrAFfLlUpNnG/NO469aHHinzYh81ljYZPPTMJ9tciITojlk6+sGvoJkQ=;
Received: from fout-b4-smtp.messagingengine.com ([202.12.124.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1w8ysx-0005Cl-3c for linux1394-devel@lists.sourceforge.net;
 Sat, 04 Apr 2026 11:09:52 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfout.stl.internal (Postfix) with ESMTP id 694231D0010D;
 Sat,  4 Apr 2026 07:09:40 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-09.internal (MEProxy); Sat, 04 Apr 2026 07:09:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1775300980; x=
 1775387380; bh=gHdXgRE4TlI2zCfmFmLudFXkXOiU5i41/LZ1D7hEfO8=; b=h
 1ZEFAfFSH+yDN7nrz1XEnClTEnBSh6MmeED7nzmwcSLIgnFitkA4+jD0956fBjVD
 HLfYPid14CRPHBAVl5wLEDssIHBulNHv6DcY/qm0vlKliejzxlnEYeSiRxcrJTOd
 HXZaCeOvXoMajh22hkknVUPKl/Blmd8lBxbKJQ+yEewKhbKvlXxPUepkexE//GKF
 S16qCi+sYW+2dBjwfUIQuxf/+46RJg3x2IeCrKjaQGGkGcqEVX/S77b12UsG1kIi
 0N1Hg7LoZP1np+srHcXNbGv5tP+EIFueC41NP2kVtlj6xy7ASgmk7MFaD/yD+fKr
 /jZrXwtNcMYcm8lGm0Lnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1775300980; x=1775387380; bh=gHdXgRE4TlI2zCfmFmLudFXkXOiU5i41/LZ
 1D7hEfO8=; b=ujnBqE2wmGC7F1XwgHADcT8+aG5A1clhJfF0i7glPz/ba4cj/4h
 KWbLUcUrkIy+4oNpe11FK0bMJnc7eKpqUy0QnF8Rl9IkIMZV8hwnyUjIPMQb0Rmt
 NDWLazniGeF0KDvwGXhNEsNzJ20bhIZPanw591HoekMR4K0IOzQCcAfo3X1LWSMV
 8cjH7N+cYb3byIh827WR7XR70SSVtEwCRZb3WCLgd0Q1e4NGJNh/jJbxFg2CTbiQ
 6egB2ssbPsM8+1JOBUBFmeLbwNL0yNLII6GnIyY6ralkJ8aHbwtRsZUa+Ms/KWX5
 BDjWsi9ZNWvRuBeTwg793aU+cxKTfYe4Kmw==
X-ME-Sender: <xms:dPHQaX2YVOh3N2BpR5uP9InAZEFtQCPrylSgeFyviCWGUy-h78Xavw>
 <xme:dPHQadgyE5i49Q1eJSNCNSnJqVP_smCe9rUEUGAscR2YS6-B3G9Qj2xa8oe9Pqpql
 IRNruxpI1clWWSOnLcCnqHngQ0pwPuA4PTNkEhuQ-xewFdl5z4qc5E>
X-ME-Received: <xmr:dPHQaVS-eGPktaEdCDQL9cfZKa4WDbwBc3VQGDZuvPAGgvefFHhrn45ZfvXs5piWNkZHYxFa_mO5nW1wZNSqr6tOHhsV>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduudeilecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgke
 dvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtohepughinhhgihhsohdrkhgvrhhnvghlsehgmhgrihhlrdgtohhmpdhrtg
 hpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhho
 rhhgvgdrnhgvthdprhgtphhtthhopehshhhurghnghhpvghnghdrkhgvrhhnvghlsehgmh
 grihhlrdgtohhm
X-ME-Proxy: <xmx:dPHQaWgFowvsVj29UiVcWmUGM6KFT5OONd0srOIrodyBka5wcOWlEA>
 <xmx:dPHQad44hgFpyzfe3C0qzYAibbyZC4xGU9fUJyQPCkfWx4kuKDukjQ>
 <xmx:dPHQabArdzhWiFCoQ_qmr8Dx-ZkTonZw4l9NNSecFUoGgoEWVKj6Bg>
 <xmx:dPHQacbDEHB9BG-0zc7XhrcDFM_tQGotC2n5MpUfOtPBcklBVG3Ntw>
 <xmx:dPHQafiooyYiSsGIyxeaW2XstN1utrvvE7H6SYx7I0S_KQjPP42A0CFx>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 4 Apr 2026 07:09:38 -0400 (EDT)
Date: Sat, 4 Apr 2026 20:09:36 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Dingisoul <dingiso.kernel@gmail.com>
Subject: Re: Re: [BUG] firewire: core-cdev: reference count leak in
 iso_resource_work
Message-ID: <20260404110936.GA282614@sakamocchi.jp>
Mail-Followup-To: Dingisoul <dingiso.kernel@gmail.com>,
 linux1394-devel@lists.sourceforge.net, shuangpeng.kernel@gmail.com
References: <20260401065741.GA99710@sakamocchi.jp>
 <20260401213239.455929-1-dingiso.kernel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260401213239.455929-1-dingiso.kernel@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Apr 01, 2026 at 05:32:39PM -0400,
 Dingisoul wrote:
 > Hi Takashi, > > Thank you for the quick reply! > > You are correct that
 the client_put() after the 'out' label, > releases the reference fo [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1w8ysx-0005Cl-3c
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
Cc: linux1394-devel@lists.sourceforge.net, shuangpeng.kernel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:dingiso.kernel@gmail.com,m:linux1394-devel@lists.sourceforge.net,m:shuangpeng.kernel@gmail.com,m:dingisokernel@gmail.com,m:shuangpengkernel@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	FREEMAIL_TO(0.00)[gmail.com];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,gmail.com];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: F2C9A39AE79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Wed, Apr 01, 2026 at 05:32:39PM -0400, Dingisoul wrote:
> Hi Takashi,
> 
> Thank you for the quick reply!
> 
> You are correct that the client_put() after the 'out' label,
> releases the reference for the currently executing work.
> 
> However, the reference leak happens in the pending work that
> is canceled through cancel_delayed_work. Here is the detailed
> analysis:
> 
>     CPU 0 (Executing)                 CPU 1 (Pending)
>     -------------                     ------------
>     schedule_iso_resource()
>       client_get() // get 1
> 
>     iso_resource_work()
>                                       schedule_iso_resource()
>                                         client_get() // get 2
> 
>       cancel_delayed_work()
>       client_put() // put 1
> 
> 1. First thread calls schedule_iso_resource. It calls client_get
>    (get 1) and queues r->work.
> 
> 2. When first thread runs iso_resource_work, second thread calls 
>    schedule_iso_resource again. It calls client_get (get 2) and 
>    queues a new pending work item.
> 
> 3. The first thread calls cancel_delayed_work which removes the 
>    pending work from the queue. Because that work will never run, 
>    the corresponding client_put after the 'out' label is never called.
> 
> 4. The first thread call client_put (put 1) and finish the work.
> 
> The reference acquired in step 2 is never put, causing a reference leak.
> 
> Does this clarify the scenario? I'd be happy to provide more information.
> 
> Thanks for your time!

Now I got it. Indeed, we have the issue in current code. The work item
could be accessible in several contexts by enumerating
'struct client.resourcew_xa'. The most probable scenario is the call of
fw_cdev_update() when bus reset occurs.

Hm. As a quick glance, I can not find a quick solution for this issue.
Let me take more time to fix it (probably it requires code-refactoring).


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
