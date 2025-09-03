Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF43B42120
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Sep 2025 15:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v2cIOK65hY9iPfI32v3JawkfbwIHLeCuh+AxmnE6S5M=; b=KKm1qGF4Wg4UJEdHDbbZuNAzhE
	hQA848usO64vLAzwczTR42JgR+/4Ea9Fjoc5a048xnn/rTcLGFT2wxEQ3r+HE5k2q2rmaeN45nQXI
	zJha0+k/2EZGdYJJdr6UM/kjp+fXa9jzr65+fWgyq9dvs5TeT3DK9bT+TU1tCXduunpM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1utnQE-00010u-0V;
	Wed, 03 Sep 2025 13:21:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1utnQC-00010l-G3
 for linux1394-devel@lists.sourceforge.net;
 Wed, 03 Sep 2025 13:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gjSVmTZLOc7Cyb4WoSyeBbKN9tzEG7g1y0LgWwPh1pw=; b=b3la/fur4wAhDe6qfjfcsF4wFD
 yzeSAoDDEdMXoS6nIeNWGDv9OUknfhDFG+x0oYmB4dN9SqKu9aYE+PljGNnZfm97dsoxKGzkxYPs7
 H6LFFeaOlFnlMp9GRdHJN4j0SOzHMfT0wIWgzWGxgF7HOnKjuxIq8B85F3t8k6p8utYQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gjSVmTZLOc7Cyb4WoSyeBbKN9tzEG7g1y0LgWwPh1pw=; b=ERG2ch+2PhAqRbXbV6aRXSh2R2
 jKtTLyrmPgJJNmxggItTZDrCdZBeSQjzu3d6ee2VmItEMahNDKt32AyS/RblNUrEfXEhvmgh+Gdlo
 70qoMhQe7BFvA3JSfL81JSUBV4RiZKi4/XdjY1iucHSArDXnFy+KPoa6FYDSzuNxocOw=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1utnQ8-0003zs-Ex for linux1394-devel@lists.sourceforge.net;
 Wed, 03 Sep 2025 13:21:08 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id C54A2140040E;
 Wed,  3 Sep 2025 09:20:53 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Wed, 03 Sep 2025 09:20:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1756905653; x=
 1756992053; bh=gjSVmTZLOc7Cyb4WoSyeBbKN9tzEG7g1y0LgWwPh1pw=; b=u
 OWaxw/G3Dc/BtZSjEZj3nE7VeUh40qhoedOs2WLwJ21+7beugkSC9hzyJBNm47z/
 GFP+DEmODwVpD52hOl4YVbcRrsOYVH5LHT+RKN8rMM3G2DrBHzJhQ40sQrzjWOjq
 VtRFtv6mGp25WkJSg6AzTsPE5kjIAdqKGbfybEwMc1imhWHzURzxCzohkfW0UKQz
 JO8o7hq+xp2rur/o8kXFdw5f5q9iu8DJWaeqSJiygIR/NTjKmVhNK8ExB4EsLssT
 tp9Uzx3AvRAkNBizYHTx5Z9TdCjhTQgKB2+F1vlkEAcAx2TgJRSuKhuuFgwxIVkj
 cEvdpxRe8InYGyJ8Io0eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1756905653; x=1756992053; bh=gjSVmTZLOc7Cyb4WoSyeBbKN9tzEG7g1y0L
 gWwPh1pw=; b=LHwVWWlVofGwBRWzJ7s7qLelajjRh4pq92A5ib2nCE7Fo2oY+19
 07fk0gcOkIoOeBr4pEbBfWxQgjYF+5Z4VrZZqG9/T/xB5eBzLAvqt6yrTLViuMQZ
 BcaMa2EaSt0v0aDbRNLGmtYtv9KAKt9eQ+biPB8jSSg5sWgPdr37mHQn02Ia2xnT
 IiU0A+xf3+88bNwReHJNzPEzsbgIfqAVTpzthDo4ugGgipf2JIYHP/btaBZ2L/SA
 AlOk+uLXmWWlsXVxpt/Y6FW/MKsBZaMqN8gjRpyeZDFcaoM4iBWu950RuzsqA14X
 4DSzaCZs1YCVD19wbQ0lyDwPxJCpab2JBMA==
X-ME-Sender: <xms:tUC4aJ5LMuGH5bgwh6elT6SFvIHH-E2tWf22cOrZdY1rAqI-DPa_MA>
 <xme:tUC4aAVcQ3nF3s7paJ1C5ez4lDtK9vGBghKOGvk7bGsTZz0PuhwNXbLgos67Xs-CM
 3pa9xU9iumuykmyPlg>
X-ME-Received: <xmr:tUC4aAD6jJ8ILBoOkRNhAJXQBcWxSFFArObrQN9cryyTFGhGNLl-MBeL-PFTzH7Hvr4ryEvhOZnMV1JpYGMFYVLTm6u0bnDWtNM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttd
 dvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhfdukeffhe
 ekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghp
 thhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepmhhishhtvghrmhhiug
 hisehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlhes
 lhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqd
 hkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehgrhgvghhk
 hheslhhinhhugihfohhunhgurghtihhonhdrohhrgh
X-ME-Proxy: <xmx:tUC4aH6FjZdpFkP0e2kOK8FA1iTAeF4S2TyySOdftEoZFMlKHJuOgg>
 <xmx:tUC4aDzxhRyL9qy7nvxkv-JmESpFmm5riSYsLDxw0N53FIX2N2L_vg>
 <xmx:tUC4aGwxJoqjbOElErINWszDdJMybQwyaY-kKOo9XkURT2NTotO3uA>
 <xmx:tUC4aDw9299g_a2jnibR_0CP3p_MCov6VtX9rMKIFR9lH7hO45ozWQ>
 <xmx:tUC4aFz0UJaLsWNOVwa0g_sqAUFAkI4Li-pq7SIQQC-8VEZDNY31DBdK>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Sep 2025 09:20:52 -0400 (EDT)
Date: Wed, 3 Sep 2025 22:20:48 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Aleksandr Shabelnikov <mistermidi@gmail.com>
Subject: Re: [PATCH v2] firewire: core: bound traversal stack in
 read_config_rom()
Message-ID: <20250903132048.GA77442@workstation.local>
Mail-Followup-To: Aleksandr Shabelnikov <mistermidi@gmail.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
References: <20250902092745.8326-1-mistermidi@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250902092745.8326-1-mistermidi@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for the patch. On Tue, Sep 02, 2025 at 11:27:45AM
 +0200, Aleksandr Shabelnikov wrote: > read_config_rom() walks Configuration
 ROM directories using an explicit > stack but pushes new entries without
 a bound check: > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1utnQ8-0003zs-Ex
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
Cc: gregkh@linuxfoundation.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Thanks for the patch.

On Tue, Sep 02, 2025 at 11:27:45AM +0200, Aleksandr Shabelnikov wrote:
> read_config_rom() walks Configuration ROM directories using an explicit
> stack but pushes new entries without a bound check:
> 
>     stack[sp++] = i + rom[i];
> 
> A malicious or malformed Configuration ROM can construct in-range cyclic
> directory references so that the traversal keeps enqueueing, growing the
> stack past its allocated depth. rom[] and stack[] are allocated adjacent
> in a single kmalloc() block, so this leads to a heap out-of-bounds write.
> 
> Add a hard bound check before every push. While this does not itself
> implement cycle detection, it prevents memory corruption and limits the
> impact to a clean failure (-EOVERFLOW).
> 
> Signed-off-by: Aleksandr Shabelnikov <mistermidi@gmail.com>
> ---
> v2:
>   - Drop Reported-by / Suggested-by trailers (per Greg KH)
> ---
>  drivers/firewire/core-device.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)

For this kind of issue, I always hesitate to accept such changes, since
they addresses to an unreal problem. Moreover, IEEE 1394 is already a
legacy technology, and has been abandoned by vendors and manufacturers.
It is hardly plausible that such malicious content of configuration ROM
would be spread widely in recent years.

Nevertheless, from the perspective of building a robust software stack,
I can recognize the merit of your proposal. For this aim, I suggest you
consider working with KUnit[1].

The following change allows us to provide a customized read function to
the relevant function in any KUnit test suite. You can find some existing
examples of Kunit tests in the following files:

* drivers/firewire/device-attribute-test.c
* drivers/firewire/ohci-serdes-test.c
* drivers/firewire/packet-serdes-test.c
* drivers/firewire/self-id-sequence-helper-test.c
* drivers/firewire/uapi-test.c

Contributions to this subsystem may not provide a strong advantage to
your career as a software engineer. However, knowledge and experience
with the KUnit framework will certainly be valuable and beneficial. If
you are still motivated, I encourage you to give it a try.

[1] https://docs.kernel.org/dev-tools/kunit/index.html

```
$ git diff
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 4125e9e8..0987f7fe 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -575,7 +575,8 @@ static int read_rom(struct fw_device *device,
  * are reading the ROM may have changed the ROM during the reset.
  * Returns either a result code or a negative error code.
  */
-static int read_config_rom(struct fw_device *device, int generation)
+static int read_config_rom(struct fw_device *device, int generation,
+                          int (*read_fn)(struct fw_device *, int, int, u32 *))
 {
        struct fw_card *card = device->card;
        const u32 *old_rom, *new_rom;
@@ -595,7 +596,7 @@ static int read_config_rom(struct fw_device *device, int generation)

        /* First read the bus info block. */
        for (i = 0; i < 5; i++) {
-               ret = read_rom(device, generation, i, &rom[i]);
+               ret = read_fn(device, generation, i, &rom[i]);
                if (ret != RCODE_COMPLETE)
                        goto out;
                /*
@@ -633,7 +634,7 @@ static int read_config_rom(struct fw_device *device, int generation)
                        device->max_speed = card->link_speed;

                while (device->max_speed > SCODE_100) {
-                       if (read_rom(device, generation, 0, &dummy) ==
+                       if (read_fn(device, generation, 0, &dummy) ==
                            RCODE_COMPLETE)
                                break;
                        device->max_speed--;
@@ -665,7 +666,7 @@ static int read_config_rom(struct fw_device *device, int generation)
                }

                /* Read header quadlet for the block to get the length. */
-               ret = read_rom(device, generation, i, &rom[i]);
+               ret = read_fn(device, generation, i, &rom[i]);
                if (ret != RCODE_COMPLETE)
                        goto out;
                end = i + (rom[i] >> 16) + 1;
@@ -689,7 +690,7 @@ static int read_config_rom(struct fw_device *device, int generation)
                 * it references another block, and push it in that case.
                 */
                for (; i < end; i++) {
-                       ret = read_rom(device, generation, i, &rom[i]);
+                       ret = read_fn(device, generation, i, &rom[i]);
                        if (ret != RCODE_COMPLETE)
                                goto out;

@@ -1014,7 +1015,7 @@ static void fw_device_init(struct work_struct *work)
         * device.
         */

-       ret = read_config_rom(device, device->generation);
+       ret = read_config_rom(device, device->generation, read_rom);
        if (ret != RCODE_COMPLETE) {
                if (device->config_rom_retries < MAX_RETRIES &&
                    atomic_read(&device->state) == FW_DEVICE_INITIALIZING) {
@@ -1207,7 +1208,7 @@ static void fw_device_refresh(struct work_struct *work)
         */
        device_for_each_child(&device->device, NULL, shutdown_unit);

-       ret = read_config_rom(device, device->generation);
+       ret = read_config_rom(device, device->generation, read_rom);
        if (ret != RCODE_COMPLETE)
                goto failed_config_rom;

``


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
